{ pkgs }:

{
  rime-ice = pkgs.fetchFromGitHub {
    owner = "iDvel";
    repo = "rime-ice";
    rev = "4de928b0e4df019fb4e90097ab2999d36a0c1275";
    hash = "sha256-P/HzsqNOpifQMfD4sN/knvL4mbTVDGhvpUfXJhgvF9M=";
  };

  caelestia = pkgs.fetchFromGitHub {
    owner = "caelestia-dots";
    repo = "caelestia";
    rev = "5d95df7d147578f220fb77714edc893aed8c07a3";
    hash = "sha256-TkGZhfCPCoGflC+ABKb8bEywkdFE8w+aywHTNRcYxO0=";
  };

  agent-browser = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-browser";
    rev = "7ada3384e2afb5f3c43d9106389da86d8f807dca";
    hash = "sha256-bTYekrFtUtbyJXudjQYe7sH0FTuhcGzcSDCN7qRciv8=";
  };

  vercel-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "skills";
    rev = "7c0a9af3f8738965b71341712710ac7371089b34";
    hash = "sha256-YxCMuTl+pVJ7dXhaL7l9vDw9k2orlG31j7/0pgllMJk=";
  };

  agent-skills = pkgs.fetchFromGitHub {
    owner = "vercel-labs";
    repo = "agent-skills";
    rev = "ce3e64e468f8fa09a2d075d102771838061fdac0";
    hash = "sha256-y5lIR+HTD8JeRYac4QddYe0YAddGXw9wAs9/NZQIAIY=";
  };

  remotion-skills = pkgs.fetchFromGitHub {
    owner = "remotion-dev";
    repo = "skills";
    rev = "2accec71ea1c28d36f8ab41e5f077b0729d9a88b";
    hash = "sha256-fv7zsqT7GCM25onqQlj0x/db/ivIeqkOyNFyXdGpykQ=";
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
    rev = "5128e1865d670f5d6c9cef000e6dfc4e951fb5b9";
    hash = "sha256-xFsg66TCtKzSgRIW6Ab771FWEIhei3jPgfE4byMiB44=";
  };

  caveman = pkgs.fetchFromGitHub {
    owner = "JuliusBrussee";
    repo = "caveman";
    rev = "ef6050c5e1848b6880ff47c32ade1a608a64f85e";
    hash = "sha256-LlyBlFsKUHKzsOXEwENoVSsZHtKENVY4vFMRf08vzoU=";
  };

  openai-skills = pkgs.fetchFromGitHub {
    owner = "openai";
    repo = "skills";
    rev = "af9b54f235d0d56c6b4410be54d578b0fda4ddfc";
    hash = "sha256-sDuay63p8ViSEeXHdMEqQfxviwFqQxiUWHFuTtDSclk=";
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
    rev = "7f8b01d5068495af2f4b07f1f91bc4c1e7b82fe0";
    hash = "sha256-3ir5uOM78KO/7FsNdWZe8NapK23PLIz11kvSblTp+3E=";
  };

  context7 = pkgs.fetchFromGitHub {
    owner = "upstash";
    repo = "context7";
    rev = "795d5da720e16c417ae30a548a475672ae35e92f";
    hash = "sha256-FS4JNh9QXCicV2mRuN7jMos4nEbr7eqO/g97HLQJAyU=";
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
    rev = "6a823a4f2378a9c4699c978513666918d9d70556";
    hash = "sha256-dghioPN/VjcQ7igUT+3JHn3IB1HgTI0lsHsAoiIXA0E=";
  };

  acpx-skills = pkgs.fetchFromGitHub {
    owner = "openclaw";
    repo = "acpx";
    rev = "1a9fdabfd7a6fd7218284971df7ed4aed6013c4a";
    hash = "sha256-vX5KpYX5BgiHxHEl9HZQUezFg/+quE+646inRIo7vlM=";
  };

  hermes-bundled-skills = pkgs.fetchFromGitHub {
    owner = "NousResearch";
    repo = "hermes-agent";
    rev = "457c7b76cd69089142f7ee02bf26ed5fef9d8741";
    hash = "sha256-owO2v4WGuQIa3gTI9dgZhFg2tr0bEosRIkH+49IINeo=";
  };

  expo-skills = pkgs.fetchFromGitHub {
    owner = "expo";
    repo = "skills";
    rev = "93751dadf0494110893a9f7a2091ca14833d8212";
    hash = "sha256-j5xTQWdJN98vvbDiAQXVjS79q4XB+nkESoZOrNY0xWg=";
  };

  mattpocock-skills = pkgs.fetchFromGitHub {
    owner = "mattpocock";
    repo = "skills";
    rev = "b843cb5ea74b1fe5e58a0fc23cddef9e66076fb8";
    hash = "sha256-qOhU5bBnT6kI8c7i0r0IyecrgLJNNPlmQtAb6qWM73Q=";
  };

  figma-mcp-server-guide = pkgs.fetchFromGitHub {
    owner = "figma";
    repo = "mcp-server-guide";
    rev = "fabc1ca81d839602ba7c1ca0f445a64246b3870e";
    hash = "sha256-8uTCDvlQJmP9ceqVUJ+rBmLmIrtyr1gyr+rVKAQgb3Q=";
  };

  wechatpay-skills = pkgs.fetchFromGitHub {
    owner = "wechatpay-apiv3";
    repo = "wechatpay-skills";
    rev = "15f40d070c503be7f02c3ebeb8dfb6b8274f3291";
    hash = "sha256-bg5URtWb8jp2PGYEtniPzW9p4GsPqmd7tvrX5k44Q4Q=";
  };

  tmux-1password = pkgs.fetchFromGitHub {
    owner = "yardnsm";
    repo = "tmux-1password";
    rev = "fee36493fe352e34f46f2e293a218a6667607b00";
    hash = "sha256-0ezD7TSNCFL+spPhbTHlITeyNOw/lyzZD6cdiT5NU/0=";
  };
}
