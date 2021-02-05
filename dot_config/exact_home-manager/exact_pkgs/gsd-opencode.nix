{
  lib,
  fetchurl,
  stdenvNoCC,
  nodejs_24,
}:

let
  version = "1.38.1";
  src = fetchurl {
    url = "https://registry.npmjs.org/get-shit-done-cc/-/get-shit-done-cc-${version}.tgz";
    hash = "sha256-hPUhUBBIBDOUfjOTFH3Lph1ffkyi4F5blQK+pyWqdyo=";
  };
in
stdenvNoCC.mkDerivation rec {
  pname = "gsd-opencode";
  inherit version;

  inherit src;

  dontBuild = true;

  unpackPhase = ''
    runHook preUnpack
    mkdir source
    tar -xzf "$src" --strip-components=1 -C source
    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    export HOME="$TMPDIR/home"
    mkdir -p "$HOME"

    cd source

    installRoot="$TMPDIR/opencode"
    ${lib.getExe nodejs_24} bin/install.js \
      --opencode \
      --global \
      --config-dir "$installRoot" \
      --no-sdk

    mkdir -p "$out"
    cp -r "$installRoot/command" "$out/"
    cp -r "$installRoot/agents" "$out/"
    cp -r "$installRoot/hooks" "$out/"
    cp -r "$installRoot/get-shit-done" "$out/"

    runHook postInstall
  '';

  meta = with lib; {
    description = "Prebuilt Get Shit Done OpenCode runtime tree";
    homepage = "https://github.com/gsd-build/get-shit-done";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
