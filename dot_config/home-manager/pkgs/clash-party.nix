{ lib, stdenv, fetchurl, makeWrapper, autoPatchelfHook, binutils, alsa-lib, at-spi2-atk, cups, dbus, glib, gtk3, libdrm, mesa, nspr, nss, libx11, libxcomposite, libxdamage, libxext, libxfixes, libxrandr, libxcb, libxkbcommon }:

let
  pname = "clash-party";
  version = "1.9.1";

  sources = {
    x86_64-linux = {
      url = "https://github.com/mihomo-party-org/clash-party/releases/download/v${version}/clash-party-linux-${version}-amd64.deb";
      hash = "sha256-SCig+Q2YN3LbThig0kXEG6D/ywz7OvsMfWO0Nf5SDvM=";
    };
    aarch64-linux = {
      url = "https://github.com/mihomo-party-org/clash-party/releases/download/v${version}/clash-party-linux-${version}-arm64.deb";
      hash = "sha256-1Cuv+n0kXcthPksvXzHASjXz00ygbNAXYMEg5PYBP+4=";
    };
  };

  source =
    sources.${stdenv.hostPlatform.system}
      or (throw "${pname}: unsupported system ${stdenv.hostPlatform.system}");
in
stdenv.mkDerivation {
  inherit pname version;
  src = fetchurl source;

  nativeBuildInputs = [ makeWrapper autoPatchelfHook binutils ];

  buildInputs = lib.optionals stdenv.isLinux [
    alsa-lib
    at-spi2-atk
    cups
    dbus
    glib
    gtk3
    libdrm
    mesa
    nspr
    nss
    libx11
    libxcomposite
    libxdamage
    libxext
    libxfixes
    libxrandr
    libxcb
    libxkbcommon
  ];

  unpackPhase = ''
    runHook preUnpack
    ar x "$src"
    set -- data.tar.*
    tar -xf "$1"
    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/opt" "$out/share" "$out/bin"
    cp -r opt/clash-party "$out/opt/"
    cp -r usr/share/applications "$out/share/"
    cp -r usr/share/icons "$out/share/"

    substituteInPlace "$out/share/applications/mihomo-party.desktop" \
      --replace-fail "Exec=/opt/clash-party/mihomo-party %U" "Exec=$out/bin/clash-party %U"

    makeWrapper "$out/opt/clash-party/mihomo-party" "$out/bin/clash-party" \
      --add-flags "--no-sandbox"

    runHook postInstall
  '';

  meta = with lib; {
    description = "Desktop GUI client for Mihomo";
    homepage = "https://github.com/mihomo-party-org/clash-party";
    license = licenses.gpl3Only;
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
    platforms = [ "x86_64-linux" "aarch64-linux" ];
    mainProgram = "clash-party";
  };
}
