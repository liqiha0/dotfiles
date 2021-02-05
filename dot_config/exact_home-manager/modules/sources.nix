{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "6319944ea9ea3dc17aa62d3aef5e019e7890d6b5";
    hash = "sha256-/9clctDtFlngn0zcGb/OL055/i+PGzVK7qjJv3xh4+g=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "a4fb28503d395ec16e570aee01dd6ce19466f672";
    hash = "sha256-exlAydwuxuxMZpiZjMDmCBNtfvEM8BflRj0BWgzSj+M=";
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
    rev = "c2794232ee7dc7b99279f414205d9d0bb15b23b8";
    hash = "sha256-BQGMAYgyaid8MDlNJYYCqkI+y+maA3fjaQOjAlPF6Jk=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "7022ad39948c10024e451a56baba6fee62477df5";
    hash = "sha256-tW4Ar2RZ7t6/glRkz1vx1EQGIeioGpmF1ifQkzZHtlM=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "64bee5b7ea30702448e2aed774eb361914029944";
    hash = "sha256-Qa2EpuelSvvr4m/HSbxXhED04KnCCt2XpKr7SCJySwQ=";
  };

  remotion-skills = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "skills";
    rev = "937ffb32b148fdceef4b4184f975a708aab8d560";
    hash = "sha256-nKi9AfcpzkKKSQzxw6trdLgqjadQwThDJP0iH/8ztks=";
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
    rev = "ce2535c009ef92f4065be9626ae695c9ecd77e61";
    hash = "sha256-Dq3RuFb0hjFmxsnN9v3LctnoIN0DmfAe434puOSbLr0=";
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
    rev = "450d49ea5271cbba587f2a8b287af3b25d99997b";
    hash = "sha256-jPZdXdjU70wgph9q3PQEEzggATSWhVZuD+x5Lo/L2w0=";
  };

  obra-superpowers = pkgs.fetchFromGitHub {
    owner = "obra";
    repo = "superpowers";
    rev = "33e55e60b2efcb69509bc233dfc128112012b2c8";
    hash = "sha256-Re8VNhcgbfmW/AENCcDc/hRTlkVT9e+AE/vrQkbqs68=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "46a7d1bec64e0fd016eea6a66eda8ac34b44c491";
    hash = "sha256-H3gdG52LdxDog7M3QiQgdT/hUapybneG65fcqzVQXi4=";
  };

  tmux-1password = pkgs.fetchFromGitHub {
    owner = "yardnsm";
    repo = "tmux-1password";
    rev = "fee36493fe352e34f46f2e293a218a6667607b00";
    hash = "sha256-0ezD7TSNCFL+spPhbTHlITeyNOw/lyzZD6cdiT5NU/0=";
  };
}
