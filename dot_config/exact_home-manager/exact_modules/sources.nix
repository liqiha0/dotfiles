{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "07eca7256d0bae6948dcf3838e14910dbe3b00be";
    hash = "sha256-hRtA1cYAQm7M+dPSThedqKogr8YMkP9WQFEZw5pdCbU=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "5a90517d599e4bbe440888a773aeaf0a5518727d";
    hash = "sha256-R0C7Gmgk2OyL6oq35OymwUXgt/VAPVA/LrD4v33E8uc=";
  };

  simple-bar = pkgs.fetchFromGitHub {
    owner = "Jean-Tinland";
    repo = "simple-bar";
    rev = "02ad1f1c63712d540704574a0ec8c8b626c0e975";
    hash = "sha256-FXejh/rNNupIPs5FFxSVmXml7MYof8oT044svFI79u8=";
  };

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "dc26ff76679a1f3b0cf22651d06d79e40dfe88fe";
    hash = "sha256-JPmZFzo9GvHfRoRMJB9tNIFV92NOld51Saa4LBWC4jY=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "d95d0cacfd0ebe9677cb96d51c66a8e9d5630f2c";
    hash = "sha256-w4vw0I3q+3AtfcQSRBwOvNKFIz2FEOgqsdcCcZ7UllY=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "64484e9a6022c81e3af59f5dcee6fb6d631bf53e";
    hash = "sha256-rMkx74IAnW55otJefKke8GRYL4Py0KxoeASJwMqOmFY=";
  };

  remotion = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "remotion";
    rev = "76d2b0f3561e1bc049e1581ce6ffdd2bcb179a4a";
    hash = "sha256-XF2wEvX2DGBb/5X3um76DV/VK+q/QQw7C5zLAmGcjv8=";
  };

  ui-ux-pro-max-skill = pkgs.fetchFromGitHub {
    owner = "nextlevelbuilder";
    repo = "ui-ux-pro-max-skill";
    rev = "4255c218a6762c945a782701fd38dfb24fc10064";
    hash = "sha256-zoWOE5ua4f4sWdjC8FERw0CafVzo6SkBg+2Ln1tFYr8=";
  };

  obsidian-skills = pkgs.fetchFromGitHub {
    owner = "kepano";
    repo = "obsidian-skills";
    rev = "bb9ec95e1b59c3471bd6fd77a78a4042430bfac3";
    hash = "sha256-nLsv1cJl/4wnb1TBkz6OA/9tC9TM15Yx7Tquk0NbjHk=";
  };

  anthropics-skills = pkgs.fetchFromGitHub {
    owner = "anthropics";
    repo = "skills";
    rev = "98669c11ca63e9c81c11501e1437e5c47b556621";
    hash = "sha256-w//9LB1OVG9jlllY+VDse7Js0dn5x6Ys2vPuQACKsTM=";
  };

  openai-skills = pkgs.fetchFromGitHub {
    owner = "openai";
    repo = "skills";
    rev = "736f600bf6ecbc000c04f1d2710b990899f28903";
    hash = "sha256-EmLvwcfI0wrlRkEPhC1tpN8NrVuf0+YC+yOhr4IWbmw=";
  };

  opencode-acp-skill = pkgs.fetchFromGitHub {
    owner = "bjesuiter";
    repo = "opencode-acp-skill";
    rev = "61508c63105dbe92e01b08c921cb244ba0be1db0";
    hash = "sha256-FYwVIA2FK6qjFRg5tFqK2VH8D+xCHZxwHTTaZqEercY=";
  };

  openclaw-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "openclaw";
    rev = "92d0b3a557bccd1a64591b345903a32792fc0e31";
    hash = "sha256-nabPBi/nP2wdwOfLHySLZRZixSDoualLsFmo4SblJvE=";
  };

  acpx-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "acpx";
    rev = "fb392bb6f76256682c28b3abc127b7b777c1e2fb";
    hash = "sha256-i8Qrcg1LfjIxcYRZZRrT4m/LDMf3mpDywIkkEZy/UYg=";
  };

  rtk = pkgs.fetchFromGitHub {
    owner = "rtk-ai";
    repo = "rtk";
    rev = "6444c4b018f5619ab2a441191534937894b17970";
    hash = "sha256-f9bhFkJ1d4S791iouIqyz0wOyghScvdpHpQKLC+UxJM=";
  };

  obra-superpowers = pkgs.fetchFromGitHub {
    owner = "obra";
    repo = "superpowers";
    rev = "eafe962b18f6c5dc70fb7c8cc7e83e61f4cdde06";
    hash = "sha256-r/Z+UxSFQIx99HnSPoU/toWMddXDcnLsbFXpQfLfj1k=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "512f1c770037f8bb4a86748df54e219716d64414";
    hash = "sha256-fDBseNDRKrtFhZMyyHNCIzXpg/aLGY6SmczlCJyFd/E=";
  };

  tmux-1password = pkgs.fetchFromGitHub {
    owner = "yardnsm";
    repo = "tmux-1password";
    rev = "fee36493fe352e34f46f2e293a218a6667607b00";
    hash = "sha256-0ezD7TSNCFL+spPhbTHlITeyNOw/lyzZD6cdiT5NU/0=";
  };

  get-shit-done = pkgs.fetchFromGitHub {
    owner = "gsd-build";
    repo = "get-shit-done";
    rev = "1421dc07bc1033f1b69e49d85cb6d625fd696b4f";
    hash = "sha256-1hW7Np5N4zRit4bCVnTEwOKDKCULsUSZsllYNQd4XiE=";
  };
}
