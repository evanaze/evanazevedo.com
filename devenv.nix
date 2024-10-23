{pkgs, ...}: {
  # https://devenv.sh/packages/
  packages = with pkgs; [
    hugo
    nodejs
    tailwindcss
  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  processes = {
    tw.exec = "npx tailwindcss -i ./static/css/input.css -o ./static/css/output.css --watch";
    hugo.exec = "hugo server -D";
  };

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
