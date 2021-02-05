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

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "399fd7a434583896ff11944e870ab480f1945f8b";
    hash = "sha256-vWHa0a3XBJODM3PArMvGcGOG9jvSN1HaY6AzruFfb08=";
  };

  obsidian-skills = pkgs.fetchFromGitHub {
    owner = "kepano";
    repo = "obsidian-skills";
    rev = "4540df83fc68a68bef27e83ae79bc4f1b4d2ea7c";
    hash = "sha256-pCBzAuclCVlAu3fm3JslHpZiG9Pwom9D1etXrre/7Wg=";
  };

  anthropics-skills = pkgs.fetchFromGitHub {
    owner = "anthropics";
    repo = "skills";
    rev = "69c0b1a0674149f27b61b2635f935524b6add202";
    hash = "sha256-pllFZoWRdtLliz/5pLWks0V9nKFMzeWoRcmFgu2UWi8=";
  };
}
