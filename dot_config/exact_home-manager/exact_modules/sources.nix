{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "ec9fcfc1da840902373c73ca82aa505d7bab2bdf";
    hash = "sha256-L4re582x2RKDobLu7jC33pm6koXfGNcNQ8Cn0gKCm8A=";
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
    rev = "fa043a496f7579680c78b22d0a5015f48dc99a4d";
    hash = "sha256-U0GMX91tAedqf1M0EBKEFgCFObB3acosmYGY2XtkvHU=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "004c73806e35f3b12582967759559203c4ed01f9";
    hash = "sha256-cdundZSbWn8wXByYeXI4lQ3gWtBj3DkPQ37Py0bL3IY=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "73140fc5b3a214ad3222bcf557b397b3c02d11c1";
    hash = "sha256-1l6cthflz36+ihVQJ5PVl2GysLl1NBiKNNl8LUg+U28=";
  };

  remotion = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "remotion";
    rev = "d944e427a7e2de3ab93765dd97c444f86281ed7c";
    hash = "sha256-pePLgGYbTsOBBTrD9caGlgooEYrCiuvCzXrx8VDIL/o=";
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
    rev = "12ab35c2eb5668c95810e6a6066f40f4218adc39";
    hash = "sha256-H/oorOl5cch7bnziDz7gHNBv5Q0OAwFbk9w1WLku2kk=";
  };

  caveman = pkgs.fetchFromGitHub {
    owner = "JuliusBrussee";
    repo = "caveman";
    rev = "600e8efcd6aca4006051ca2a889aa8100a9b3967";
    hash = "sha256-gDPgQx1TIhGrJ2EVvEoDY+4MXdlI79zdcx6pL5nMEG4=";
  };

  openai-skills = pkgs.fetchFromGitHub {
    owner = "openai";
    repo = "skills";
    rev = "0ed2046f287a92b5f4bcace213dcb3cc5f094cb9";
    hash = "sha256-vB13IpKRUR7gSe+6m9JDRDixUIOujvK/e/HloavgfjA=";
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
    rev = "a94d6ef80b1d91dac02634a55b98e7a12c3f9b91";
    hash = "sha256-HYNWNmGHEDFnjlDYdVIFIjqsfKjODclvkuxZcgmeBqY=";
  };

  context7 = pkgs.fetchFromGitHub {
    owner = "upstash";
    repo = "context7";
    rev = "00833f92623032dd643974048f9817dd0f1694cc";
    hash = "sha256-ML6yCceOPlX8pcDeUPfnSkzfJwMB4oScZgulXh6CgrA=";
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
    rev = "5fbc95ecd29ade67e70ebdbb5d4966fc9c298916";
    hash = "sha256-qg1qyNplvFBMTcgxat8jgvVXvgzlyElWggzifVWXFkg=";
  };

  acpx-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "acpx";
    rev = "81ac6d3cc4113419c48873de5c1657ffe0bc4361";
    hash = "sha256-Zp9A5YYRFc0kOvp9nXxLdyaCdNdbScBLMjXkN9RvlAc=";
  };

  hermes-bundled-skills = pkgs.fetchFromGitHub {
    owner = "NousResearch";
    repo = "hermes-agent";
    rev = "1cec910b6a064d4e4821930be5cfaaf6145a2afd";
    hash = "sha256-lZ9LaXveKZsMUafMh90aGTMMzR5iIHH+YOw+pagVJNg=";
  };

  rtk = pkgs.fetchFromGitHub {
    owner = "rtk-ai";
    repo = "rtk";
    rev = "8a7106c8f2996ebc75b38a71c5f342f17811ce39";
    hash = "sha256-7DAL4dsnq2ZWmkyoI+BeN21ouK0VyLvSxOCt5hPWCl4=";
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
    rev = "917e5f53b16b115b70a3a355ed5f4993b9f8b73d";
    hash = "sha256-FMaX6VMBC64OPdvXwhXKfHKnkdvdC2R9lZaU3BR/G3o=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "9680714bad40503ef37a9f815fd1d2cd15150af4";
    hash = "sha256-EPEwJcoJg/L0eTxhW3qxvEVEcBnF0j7EnM2vrSmGfoU=";
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
    rev = "eb03ba3dd81753b121358d7b054c441193dddbe0";
    hash = "sha256-YuCNEgNY3Ze8LajGE3UHic5vu92YDTTsPE4TnE2UOjA=";
  };
}
