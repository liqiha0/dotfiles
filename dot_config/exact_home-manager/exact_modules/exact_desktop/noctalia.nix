{ config, lib, pkgs, ... }:

let
  noctaliaLocationSync = pkgs.writeShellApplication {
    name = "noctalia-location-sync";
    runtimeInputs = with pkgs; [
      coreutils
      curl
      glib
      gnused
      jq
    ];
    text = ''
      set -euo pipefail

      readonly BUS="--system"
      readonly DEST="org.freedesktop.GeoClue2"
      readonly MANAGER="/org/freedesktop/GeoClue2/Manager"
      readonly DESKTOP_ID="noctalia-location-sync"
      readonly ACCURACY_LEVEL=3
      readonly USER_AGENT="noctalia-location-sync/1.0"
      readonly NOCTALIA_BIN=${lib.escapeShellArg (lib.getExe config.programs.noctalia-shell.package)}

      client="$(${pkgs.glib}/bin/gdbus call "$BUS" \
        --dest "$DEST" \
        --object-path "$MANAGER" \
        --method org.freedesktop.GeoClue2.Manager.CreateClient \
        | cut -d"'" -f2)"

      cleanup() {
        ${pkgs.glib}/bin/gdbus call "$BUS" \
          --dest "$DEST" \
          --object-path "$MANAGER" \
          --method org.freedesktop.GeoClue2.Manager.DeleteClient \
          "$client" >/dev/null 2>&1 || true
      }
      trap cleanup EXIT INT TERM

      ${pkgs.glib}/bin/gdbus call "$BUS" \
        --dest "$DEST" \
        --object-path "$client" \
        --method org.freedesktop.DBus.Properties.Set \
        org.freedesktop.GeoClue2.Client \
        DesktopId \
        "<'$DESKTOP_ID'>" >/dev/null

      ${pkgs.glib}/bin/gdbus call "$BUS" \
        --dest "$DEST" \
        --object-path "$client" \
        --method org.freedesktop.DBus.Properties.Set \
        org.freedesktop.GeoClue2.Client \
        RequestedAccuracyLevel \
        "<uint32 $ACCURACY_LEVEL>" >/dev/null

      ${pkgs.glib}/bin/gdbus call "$BUS" \
        --dest "$DEST" \
        --object-path "$client" \
        --method org.freedesktop.GeoClue2.Client.Start >/dev/null

      get_location_path() {
        ${pkgs.glib}/bin/gdbus call "$BUS" \
          --dest "$DEST" \
          --object-path "$client" \
          --method org.freedesktop.DBus.Properties.Get \
          org.freedesktop.GeoClue2.Client \
          Location \
          | cut -d"'" -f2
      }

      get_double_prop() {
        local obj="$1"
        local prop="$2"

        ${pkgs.glib}/bin/gdbus call "$BUS" \
          --dest "$DEST" \
          --object-path "$obj" \
          --method org.freedesktop.DBus.Properties.Get \
          org.freedesktop.GeoClue2.Location \
          "$prop" \
          | ${pkgs.gnused}/bin/sed -E "s/.*double ([^>]*)>.*/\1/"
      }

      location_path="/"
      for _ in $(seq 1 10); do
        location_path="$(get_location_path)"
        if [ "$location_path" != "/" ]; then
          break
        fi
        sleep 1
      done

      if [ "$location_path" = "/" ]; then
        echo "GeoClue2 未返回位置，跳过 Noctalia 同步" >&2
        exit 0
      fi

      lat="$(get_double_prop "$location_path" Latitude)"
      lon="$(get_double_prop "$location_path" Longitude)"

      if [ -z "$lat" ] || [ -z "$lon" ]; then
        echo "GeoClue2 坐标为空，跳过 Noctalia 同步" >&2
        exit 0
      fi

      city="$(${pkgs.curl}/bin/curl -fsS \
        -H "User-Agent: $USER_AGENT" \
        -H "Accept-Language: zh-CN,zh;q=0.9,en;q=0.8" \
        "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=$lat&lon=$lon&addressdetails=1&layer=address" \
        | ${pkgs.jq}/bin/jq -r '.address.city // .address.town // .address.village // .address.county // empty')"

      if [ -z "$city" ]; then
        echo "Nominatim 未返回城市名，跳过 Noctalia 同步" >&2
        exit 0
      fi

      exec "$NOCTALIA_BIN" ipc call location set "$city"
    '';
  };
in
{
  xdg.desktopEntries.noctalia-location-sync = {
    name = "Noctalia Location Sync";
    exec = "${lib.getExe noctaliaLocationSync}";
    terminal = false;
    type = "Application";
    categories = [ "Utility" ];
  };

  programs.noctalia-shell = {
    enable = true;

    systemd.enable = true;

    settings = {
      wallpaper.overviewEnabled = true;
      colorSchemes = {
        darkMode = false;
      };
    };
  };

  systemd.user.services.noctalia-location-sync = {
    Unit = {
      Description = "Sync Noctalia location from GeoClue2";
      After = [ "graphical-session.target" "network-online.target" "noctalia-shell.service" ];
      Wants = [ "network-online.target" "noctalia-shell.service" ];
      PartOf = [ "graphical-session.target" ];
    };

    Service = {
      Type = "oneshot";
      ExecStart = lib.getExe noctaliaLocationSync;
    };
  };

  systemd.user.timers.noctalia-location-sync = {
    Unit = {
      Description = "Periodically sync Noctalia location from GeoClue2";
    };

    Timer = {
      OnBootSec = "2m";
      OnUnitActiveSec = "30m";
      Unit = "noctalia-location-sync.service";
    };

    Install = {
      WantedBy = [ "timers.target" ];
    };
  };

  programs.niri.settings.binds = {
    "Mod+Space".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
    "Mod+V".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "clipboard" ];
    "Mod+P".action.spawn = [ "noctalia-shell" "ipc" "call" "controlCenter" "toggle" ];
    "Mod+X".action.spawn = [ "noctalia-shell" "ipc" "call" "sessionMenu" "toggle" ];
    "Mod+Slash".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "windows" ];
  };
}
