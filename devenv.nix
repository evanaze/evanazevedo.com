{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = [pkgs.gomod2nix pkgs.hugo pkgs.git];

  # https://devenv.sh/languages/
  languages.go.enable = true;

  processes.hugo.exec = "hugo serve -D";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  scripts.serve.exec = ''
    hugo-obsidian -input=content -output=assets/indices -index -root=.
    hugo server --enableGitInfo --minify --bind=$(or $(HUGO_BIND),0.0.0.0) --baseURL=$(or $(HUGO_BASEURL),http://localhost) --port=$(or $(HUGO_PORT),1313) --appendPort=$(or $(HUGO_APPENDPORT),true) --liveReloadPort=$(or $(HUGO_LIVERELOADPORT),-1)
  '';

  # https://devenv.sh/tests/

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    govet = {
      enable = true;
      pass_filenames = false;
    };
    gotest.enable = true;
    golangci-lint = {
      enable = true;
      pass_filenames = false;
    };
  };

  outputs = let
    name = "evanazevedo.com";
    version = "1.0.0";
  in {app = import ./default.nix {inherit pkgs name version;};};
}
