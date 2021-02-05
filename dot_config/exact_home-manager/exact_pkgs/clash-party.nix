{
  lib,
  stdenv,
  fetchFromGitHub,
  fetchurl,
  fetchPnpmDeps,
  pnpmConfigHook,
  pnpm_10,
  nodejs_24,
  electron_38,
  python3,
  jq,
  binutils,
  makeWrapper,
  makeDesktopItem,
  copyDesktopItems,
}:

let
  pname = "clash-party";
  version = "1.9.2-immutable-sidecar";
  src = fetchFromGitHub {
    owner = "liqiha0";
    repo = "clash-party";
    rev = "e7eed01addf258ffd03a0c0d0e3a00f8e34b9eab";
    hash = "sha256-pCidLRH6mzUyQRFMEPtPIgC7q4Wlh/ESPA32MUSw6pU=";
  };
  sidecarDeb = fetchurl {
    url = "https://github.com/mihomo-party-org/clash-party/releases/download/v1.9.2/clash-party-linux-1.9.2-amd64.deb";
    hash = "sha256-uc841aRzwNIqC0+Z9L1FJ40Bq2l1cQRuVAYrjy26lCw=";
  };
  pnpm = pnpm_10;
  nodejs = nodejs_24;
  electron = electron_38;
in
stdenv.mkDerivation {
  inherit pname version src;

  pnpmDeps = fetchPnpmDeps {
    inherit pname version src pnpm;
    fetcherVersion = 3;
    hash = "sha256-4oiJ+bJSBluCL/A93Tz6ZflvDRz2scz9RlWtl9CCuWM=";
  };

  strictDeps = true;

  nativeBuildInputs = [
    copyDesktopItems
    binutils
    jq
    makeWrapper
    nodejs
    pnpm
    pnpmConfigHook
    python3
  ];

  env = {
    ELECTRON_SKIP_BINARY_DOWNLOAD = "1";
    NODE_ENV = "production";
  };

  postPatch = ''
    substituteInPlace package.json \
      --replace-fail '"postinstall": "electron-builder install-app-deps && node node_modules/electron/install.js",' ""
  '';

  buildPhase = ''
    runHook preBuild

    cp -rL ${electron.dist} electron-dist
    chmod -R u+w electron-dist

    pnpm exec electron-vite build
    pnpm exec electron-builder \
      --linux dir \
      --publish never \
      -c.electronDist=electron-dist \
      -c.electronVersion=${electron.version} \
      -c.npmRebuild=false

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/${pname} $out/share/icons/hicolor/512x512/apps
    cp -r dist/linux-unpacked/resources/* $out/share/${pname}/

    rm -rf sidecar-deb-extract
    mkdir -p sidecar-deb-extract
    pushd sidecar-deb-extract
    ar x ${sidecarDeb}
    tar -xf data.tar.* ./opt/clash-party/resources/sidecar
    popd

    rm -rf $out/share/${pname}/sidecar
    mkdir -p $out/share/${pname}/sidecar
    cp -r sidecar-deb-extract/opt/clash-party/resources/sidecar/* $out/share/${pname}/sidecar/

    install -Dm644 build/icon.png $out/share/icons/hicolor/512x512/apps/${pname}.png

    makeWrapper ${lib.getExe electron} $out/bin/${pname} \
      --add-flags "$out/share/${pname}/app.asar" \
      --set-default ELECTRON_FORCE_IS_PACKAGED 1 \
      --run 'export MIHOMO_PARTY_SIDECAR_DIR="''${XDG_DATA_HOME:-$HOME/.local/share}/mihomo-party/sidecar"' \
      --add-flags "''${NIXOS_OZONE_WL:+''${WAYLAND_DISPLAY:+--ozone-platform-hint=auto --enable-features=WaylandWindowDecorations --enable-wayland-ime=true}}"

    runHook postInstall
  '';

  desktopItems = [
    (makeDesktopItem {
      name = pname;
      desktopName = "Clash Party";
      comment = "Desktop GUI client for Mihomo";
      exec = "${pname} %U";
      icon = pname;
      terminal = false;
      type = "Application";
      startupWMClass = "mihomo-party";
      mimeTypes = [
        "x-scheme-handler/clash"
        "x-scheme-handler/mihomo"
      ];
      categories = [ "Network" "Utility" ];
    })
  ];

  meta = with lib; {
    description = "Desktop GUI client for Mihomo";
    homepage = "https://github.com/liqiha0/clash-party";
    license = licenses.gpl3Only;
    mainProgram = pname;
    platforms = platforms.linux;
  };
}
