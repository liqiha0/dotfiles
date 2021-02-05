# 集中管理所有 fetchFromGitHub 引用
{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "51003473600d90ff4b46004a5122ee1b98210606";
    hash = "sha256-4BJrs+PkC4flA7a6ZrATNT+CtUdUuoWKb62Mw5t91q4=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "c07dd5b8fffd8f37e56dca4f307485a6012bdf6a";
    hash = "sha256-LHTEGMTQFROXeIZ2z9y8PAiUelH4rl/LGsoc/QjiKvk=";
  };

  simple-bar = pkgs.fetchFromGitHub {
    owner = "Jean-Tinland";
    repo = "simple-bar";
    rev = "ac28c67d4edb0c90eeab9a3e4c0f091e98ffe691";
    hash = "sha256-Hk/1TrgXBqjwshW/dfchHe9QRLVLiXxQVC8L+m+nIeQ=";
  };
}
