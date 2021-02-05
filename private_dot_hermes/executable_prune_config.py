#!/usr/bin/env python3
"""Remove Hermes config keys that match Hermes' current defaults.

By default this edits no files and prints the pruned YAML for the
config.yaml sitting next to this script. Pass --write to overwrite it.
"""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path


def die(message: str) -> None:
    print(f"error: {message}", file=sys.stderr)
    raise SystemExit(1)


def hermes_bin() -> str:
    hermes = shutil.which("hermes")
    if hermes is None:
        die("could not find `hermes` on PATH")
    return hermes


def hermes_python(hermes: str) -> str:
    wrapper = Path(hermes)
    try:
        text = wrapper.read_text(encoding="utf-8")
    except OSError as exc:
        die(f"could not read Hermes wrapper {wrapper}: {exc}")

    match = re.search(r"^export HERMES_PYTHON='([^']+)'", text, re.MULTILINE)
    if not match:
        die(f"could not find HERMES_PYTHON in {wrapper}")
    return match.group(1)


def site_packages(hermes: str) -> str:
    try:
        output = subprocess.check_output(
            [hermes, "config", "show"],
            text=True,
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError as exc:
        die(f"`hermes config show` failed:\n{exc.output}")

    match = re.search(r"^\s*Install:\s+(.+)$", output, re.MULTILINE)
    if not match:
        die("could not find Install path in `hermes config show` output")
    return match.group(1).strip()


PRUNE_CODE = r'''
import sys
from pathlib import Path

site_packages, config_path, write_flag = sys.argv[1], Path(sys.argv[2]), sys.argv[3]
sys.path.insert(0, site_packages)

import yaml
from hermes_cli.config import DEFAULT_CONFIG


def prune(current, default, path=""):
    if path == "_config_version":
        return current, False

    if isinstance(current, dict) and isinstance(default, dict):
        out = {}
        for key, value in current.items():
            child_path = f"{path}.{key}" if path else key
            if key in default:
                pruned, same = prune(value, default[key], child_path)
            else:
                pruned, same = value, False
            if not same:
                out[key] = pruned
        return out, out == {}

    return current, current == default


current = yaml.safe_load(config_path.read_text(encoding="utf-8")) or {}
pruned, _ = prune(current, DEFAULT_CONFIG)

if isinstance(current, dict) and "_config_version" in current:
    pruned["_config_version"] = current["_config_version"]

output = yaml.safe_dump(
    pruned,
    sort_keys=False,
    allow_unicode=True,
    default_flow_style=False,
)

if write_flag == "1":
    config_path.write_text(output, encoding="utf-8")
else:
    print(output, end="")
'''


def main() -> int:
    default_config = Path(__file__).resolve().with_name("config.yaml")
    parser = argparse.ArgumentParser(
        description="Print or write Hermes config with default-valued keys removed.",
    )
    parser.add_argument(
        "config",
        nargs="?",
        default=str(default_config),
        help="config file path; defaults to config.yaml next to this script",
    )
    parser.add_argument(
        "--write",
        action="store_true",
        help="overwrite the config file instead of printing to stdout",
    )
    args = parser.parse_args()

    config_path = Path(args.config).expanduser().resolve()
    if not config_path.exists():
        die(f"config file does not exist: {config_path}")

    hermes = hermes_bin()
    env = os.environ.copy()
    env["PYTHONNOUSERSITE"] = "true"

    with tempfile.NamedTemporaryFile("w", suffix=".py", delete=False, encoding="utf-8") as handle:
        handle.write(PRUNE_CODE)
        helper_path = handle.name

    try:
        subprocess.check_call(
            [
                hermes_python(hermes),
                helper_path,
                site_packages(hermes),
                str(config_path),
                "1" if args.write else "0",
            ],
            env=env,
        )
    finally:
        try:
            Path(helper_path).unlink()
        except OSError:
            pass

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
