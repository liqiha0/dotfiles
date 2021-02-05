{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "85c0b0f6c2a05e22d79345e84b6fd78178d2edfa";
    hash = "sha256-qNOHUKzKd99QJ7ka8TzXJ6ubTuj8qxNTFdUgVRp6w64=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "9584f0b44fcbe23e9c036a8949c9f1b4fa579716";
    hash = "sha256-GuczKCv0+6tueUWoibcecpa6l41pJfbB8RLG3uQrW10=";
  };

  simple-bar = pkgs.fetchFromGitHub {
    owner = "Jean-Tinland";
    repo = "simple-bar";
    rev = "ab042347652b7acc78ae45a894e12e911621d676";
    hash = "sha256-qJ1UEUugP3ANGN8juMwO+cwAPCG6rmszctp5tBeXqt0=";
  };

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "9837b9c1aabae594e719e79f604900e7855c7b89";
    hash = "sha256-EpF+OC7EDau7lN+gC+zr7OLgIFFabliYORM+4HumCd4=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "fc3b8b8d68bd640028d2ceedaa5fe2fdf129d05a";
    hash = "sha256-cBv1c0P7IA3J3lZoHfUgr3B19ggWlJ9Fe7GsUxCufPA=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "9aec8ee6aaf702e49312a071e672f1c1b7b7e948";
    hash = "sha256-xbGSzNWhCEjKguHBHrNfakWrDbLZiT4GZBLoq2Dn17A=";
  };

  remotion-skills = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "skills";
    rev = "d5d395582c6227249cec74f53ab79aca77a4ff16";
    hash = "sha256-uSvnRFMp3mC2Pc5qAosPY8NQjxWzy2if0I8URX8AjMA=";
  };

  ui-ux-pro-max-skill = pkgs.fetchFromGitHub {
    owner = "nextlevelbuilder";
    repo = "ui-ux-pro-max-skill";
    rev = "07f4ef3ac2568c25a3b0c8ef5165a86abc3e56e4";
    hash = "sha256-zrWVV48rhz+4Hm4Ho1371yymkwbbtSveXLUvq55EGB4=";
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
    rev = "b0cbd3df1533b396d281a6886d5132f623393a9c";
    hash = "sha256-GzNpraXV85qUwyGs5XDe0zHYr2AazqFppWtH9JvO3QE=";
  };

  openai-skills = pkgs.fetchFromGitHub {
    owner = "openai";
    repo = "skills";
    rev = "dc48aff8208131776c9937326002bd60cf572ab6";
    hash = "sha256-UVjlLZfWNlMxqCBQa1lMwd9zBgS0TaoNqQYfH+abCeM=";
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
    rev = "0fae764f107dbd787df046f1496436fde0359c74";
    hash = "sha256-x8ff8vceovskVl+yDdSrJ7ibdXWeWEsU1VNHcqekTIg=";
  };

  acpx-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "acpx";
    rev = "ecd93f907e4297597ed81aaeb2b50917cefcbc64";
    hash = "sha256-1ePJu66rdjERJMaoZj4qKvi2rWWoHwlcVAoWrVXj7b4=";
  };

  rtk = pkgs.fetchFromGitHub {
    owner = "rtk-ai";
    repo = "rtk";
    rev = "c85e348a91ee5c7afb5adc298e1e71d6782a594e";
    hash = "sha256-p4OX3SSDGKlHVLIWhgKpcme449wOHbfWbc3mxlCkaMI=";
  };

  obra-superpowers = pkgs.fetchFromGitHub {
    owner = "obra";
    repo = "superpowers";
    rev = "8ea39819eed74fe2a0338e71789f06b30e953041";
    hash = "sha256-wmOArGgOahJK/mqzYJZW6qcUNaOB6yL57RQMe56S1uw=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "f046182e32c8160b1254ad12ec8318f9a9aa50b5";
    hash = "sha256-S1fHidoxfaZbYAsI/GWRoHZh9mRtfEIdLGrkhJbOtog=";
  };

  tmux-1password = pkgs.fetchFromGitHub {
    owner = "yardnsm";
    repo = "tmux-1password";
    rev = "fee36493fe352e34f46f2e293a218a6667607b00";
    hash = "sha256-0ezD7TSNCFL+spPhbTHlITeyNOw/lyzZD6cdiT5NU/0=";
  };
}
