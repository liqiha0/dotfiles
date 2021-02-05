{ lib, rustPlatform, source }:

rustPlatform.buildRustPackage rec {
  pname = "rtk";
  version = "0.31.0";

  src = source;

  cargoLock = {
    lockFile = "${src}/Cargo.lock";
  };

  meta = with lib; {
    description = "CLI proxy that reduces LLM token consumption";
    homepage = "https://github.com/rtk-ai/rtk";
    license = licenses.mit;
    mainProgram = "rtk";
  };
}
