{ pkgs }:

pkgs.fetchFromGitHub {
  owner = "iDvel";
  repo = "rime-ice";
  rev = "d93e60b190c4dee21979e040195e34e4bb6fc82b";
  hash = "sha256-PGH5cgARRtphY4H0OpudXRE6JdxxIguaPOSwXPWii1k=";
}
