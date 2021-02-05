{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "2bd2983c6c74ea49b3a013f150ade7f3b8a27515";
    hash = "sha256-VRMaa5WY7nqIFI6x3lA2PoEFwdUBPGGOl3k4ThSz4RE=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "0283b44960791ab12cde19c9797d70976a0b96a4";
    hash = "sha256-3/9OpWAtRSFumNMM1v2w2awyoSgrD/cUZyJbEHMeyWk=";
  };

  simple-bar = pkgs.fetchFromGitHub {
    owner = "Jean-Tinland";
    repo = "simple-bar";
    rev = "5fe5746dffc29b00560746b9b8963eb93581df8b";
    hash = "sha256-HNH2gsHf/zeDNa6B6uCIlrbs4zd1ED4sL09irbJpIUk=";
  };

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "717d1b09e1c841a4c0206033886a1a861e3ca5d9";
    hash = "sha256-q3UcFTB8OMOrfx5xcNPtBBAwOxoscwrjGg+y8tdETm0=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "bc21a37a12b90fcb5aec051c91baf5b227b704b1";
    hash = "sha256-JVJeottMyjxdiGPS7O4QsshKdbwbYcKMvwe/PB7I/Zw=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "ce3e64e468f8fa09a2d075d102771838061fdac0";
    hash = "sha256-y5lIR+HTD8JeRYac4QddYe0YAddGXw9wAs9/NZQIAIY=";
  };

  remotion = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "remotion";
    rev = "4ac847264167fc6d16d987e585fa5d16d96d275c";
    hash = "sha256-105Uwn2x1J16QPOBWWXN/EU4ziKeyCSrsvA1jCQq140=";
  };

  ui-ux-pro-max-skill = pkgs.fetchFromGitHub {
    owner = "nextlevelbuilder";
    repo = "ui-ux-pro-max-skill";
    rev = "b7e3af80f6e331f6fb456667b82b12cade7c9d35";
    hash = "sha256-tgGnZt6ITH8IDPqglNDC1JCt5ZkVMGcET9IbP0vITjo=";
  };

  obsidian-skills = pkgs.fetchFromGitHub {
    owner = "kepano";
    repo = "obsidian-skills";
    rev = "fa1e131a014576ff8f8919f191a7ca8d8fded39b";
    hash = "sha256-/D5HKtLvVdBh7g7zCFDQmInL7/q8koiR6HL0ARmTCoE=";
  };

  anthropics-skills = pkgs.fetchFromGitHub {
    owner = "anthropics";
    repo = "skills";
    rev = "2c7ec5e78b8e5d43ea02e90bb8826f6b9f147b0c";
    hash = "sha256-BMgH43diojdUrGC6ivk87eEm2W1yWNuh2fpR9JpbUnE=";
  };

  caveman = pkgs.fetchFromGitHub {
    owner = "JuliusBrussee";
    repo = "caveman";
    rev = "c2ed24b3e5d412cd0c25197b2bc9af587621fd99";
    hash = "sha256-m7HhCW4fXU5pIYRWVP6cvSYUkDHt8R90D9UI3tT7euk=";
  };

  openai-skills = pkgs.fetchFromGitHub {
    owner = "openai";
    repo = "skills";
    rev = "e940b8a86138adf03972802b990a1dfc57fcbf09";
    hash = "sha256-TVDx/zYVDd+UEYYFosdiDR+sWF5l4AKQeJTaItATM6c=";
  };

  prisma-skills = pkgs.fetchFromGitHub {
    owner = "prisma";
    repo = "skills";
    rev = "741a74fdafc1bf61fa208c2f73878be688cba263";
    hash = "sha256-rDZTOSmRqCqABtTMM1ReG6GeXOEkraRdkDkRODMbFEM=";
  };

  nestjs-best-practices-skill = pkgs.fetchFromGitHub {
    owner = "kadajett";
    repo = "agent-nestjs-skills";
    rev = "f9effeccffc3918f51a7d4e912be2873de21d35c";
    hash = "sha256-5ktcvK/UCWmypMM49d16IYvPF/DdZgJs2kEn3dH81Qg=";
  };

  better-auth-skills = pkgs.fetchFromGitHub {
    owner = "better-auth";
    repo = "skills";
    rev = "6a1636950a1d7fc53602639ce7505a4a5d39c797";
    hash = "sha256-jfX/tZiwV58B2nhwlY0a9ZcdXS2Df4Lxfc4SLmOO9uU=";
  };

  next-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "next-skills";
    rev = "038954e07bfc313e97fa5f6ff7caf87226e4a782";
    hash = "sha256-YkDZc2hmYukW/ahPsnzc/UHeckVVybjctKDs5MYRvZA=";
  };

  gitnexus = pkgs.fetchFromGitHub {
    owner = "abhigyanpatwari";
    repo = "gitnexus";
    rev = "725ed3fe6669f4e3decad6c66eb410de10897e2f";
    hash = "sha256-p5zPdyxgYgbBfVY9Ls0A2tbSdyfasIzkB8SjbB/rzkQ=";
  };

  context7 = pkgs.fetchFromGitHub {
    owner = "upstash";
    repo = "context7";
    rev = "a1a935cbe7be7ec0acdb3b58c7d65ddf1c8cecec";
    hash = "sha256-HnouLchKrnsddh2MdoYFNRnK9kTzqVV2di/VONcz6fQ=";
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
    rev = "3b9e0da02d8279c68a2bd024dd24027de1093e7b";
    hash = "sha256-0Gifs/lCmMPkjHXqUyAhoSwxfunt3tDtqLCU65mOGHo=";
  };

  acpx-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "acpx";
    rev = "be5199464f7d7d210374a618b65b3f25e401a803";
    hash = "sha256-sVSzx8Bzc9G2LaM/bw8UNfejqKxeWgIahbHmOLp1wtw=";
  };

  hermes-bundled-skills = pkgs.fetchFromGitHub {
    owner = "NousResearch";
    repo = "hermes-agent";
    rev = "73bccc94c7af3a07b4002c2a14a4b54f844bd561";
    hash = "sha256-ijWyPSD+r+Eo1Vy89rPlLo5ptm+BYcSxJTzqI0EoSPk=";
  };

  rtk = pkgs.fetchFromGitHub {
    owner = "rtk-ai";
    repo = "rtk";
    rev = "6d2e5e532e6dfb696d489d7f63c715e921f9e2e7";
    hash = "sha256-xmsMsZ2gLogXBliNlzRGt1UN7tdoBNg3iIsjsanSLzU=";
  };

  expo-skills = pkgs.fetchFromGitHub {
    owner = "expo";
    repo = "skills";
    rev = "8f26555fe105f72cf43051cf671771ad227a2f8f";
    hash = "sha256-fXAdrwAvJp14LAHqKcqJkP8G3uYsSbsucj2CqVSe6Dk=";
  };

  obra-superpowers = pkgs.fetchFromGitHub {
    owner = "obra";
    repo = "superpowers";
    rev = "b55764852ac78870e65c6565fb585b6cd8b3c5c9";
    hash = "sha256-cobQloF7Y6K0IC0/6xSnA2Io+fKgk2SRmCwoZZtVCco=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "9680714bad40503ef37a9f815fd1d2cd15150af4";
    hash = "sha256-EPEwJcoJg/L0eTxhW3qxvEVEcBnF0j7EnM2vrSmGfoU=";
  };

  wechatpay-skills = pkgs.fetchFromGitHub {
    owner = "wechatpay-apiv3";
    repo = "wechatpay-skills";
    rev = "a4a2f822f47525c998791e2a80bda752d630cde2";
    hash = "sha256-NcQLRzOPyJipcuYlUpr3r0RYILAGcav2xNl48ol9c78=";
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
    rev = "28d6649f0bc12b56b1e758079251901042ba68af";
    hash = "sha256-R1XmEc63lL1ZXoJhL3hBhnDOJtz39kr/SPnq4HchPtM=";
  };
}
