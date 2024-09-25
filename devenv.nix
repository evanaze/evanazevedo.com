{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = [pkgs.gomod2nix pkgs.hugo];

  # https://devenv.sh/languages/
  languages.go.enable = true;

  processes.hugo.exec = "hugo serve -D";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  scripts.hserve.exec = ''
    hugo-obsidian -input=content -output=assets/indices -index -root=.
    ${pkgs.hugo} server --enableGitInfo --minify '';

  # https://devenv.sh/tests/

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks = {
  #   govet = {
  #     enable = true;
  #     pass_filenames = false;
  #   };
  #   gotest.enable = true;
  #   golangci-lint = {
  #     enable = true;
  #     pass_filenames = false;
  #   };
  # };
}
