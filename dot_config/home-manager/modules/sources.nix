{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "23f0c39a0b443524e37dbff4f085236b32691291";
    hash = "sha256-Y6/tU63+JQ9HX1m/kI9VQz6tIhFVRAPSsp6Vf47gzUk=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "8193168491f6c96ccaaf80500c02a4ffce9b2e60";
    hash = "sha256-PP4BqDWjfk3njVe0ebvloDPhEMGdDu4QFHB6wJwGdOg=";
  };

  simple-bar = pkgs.fetchFromGitHub {
    owner = "Jean-Tinland";
    repo = "simple-bar";
    rev = "f0abc2542fd8fcd67a1c6c932b100ea430c8fa8b";
    hash = "sha256-q9ygYUn5x+iiWSozcPvsME2BkCfeFUl6hzkDCY/Ad2o=";
  };

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "c0e2b80f8cc991fbd699e0a0a201f0ec2623720e";
    hash = "sha256-IHK+aFz89WuOHXL9EFl4OZK1tsqIxw6YA86AKrFFfQo=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "cc77715531165225d680a67b0561980695b67772";
    hash = "sha256-/8LPVceUJ6px2CE9FOS5nrwakGX0Ps9bAgoqGJknON4=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "e23951b8cad2f4b1e7e176c5731127c1263fe86f";
    hash = "sha256-rSfySiCwtEP82tG9La4G7l4bu7W40ICT2qHeqpJArXc=";
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
    rev = "d820991781d4bdb8e2b2ee40f12442a5002c2b97";
    hash = "sha256-Y1Hh8JDWbBG28Sw+WXBfLQxQaHzoGDYdsbg0InOZolY=";
  };

  obsidian-skills = pkgs.fetchFromGitHub {
    owner = "kepano";
    repo = "obsidian-skills";
    rev = "be978124b80dc6b60586773e1d125d1cdf36d26a";
    hash = "sha256-sCJlf9u3JCo0YliGH6fcZSjwGR/nQOehAYx9wK04RfA=";
  };

  anthropics-skills = pkgs.fetchFromGitHub {
    owner = "anthropics";
    repo = "skills";
    rev = "3d59511518591fa82e6cfcf0438d68dd5dad3e76";
    hash = "sha256-mZZ0rlj/kju7we1h+MvUjgFAVjcZ/qKkMbNZfhfCSvk=";
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
    rev = "256021b8daa4e4882c2134d8dbd085737f6bc575";
    hash = "sha256-MgEqzEyGZa9dD3RBGv5zhBlm9O4e0MpXPzxbFgbFX1s=";
  };
}
