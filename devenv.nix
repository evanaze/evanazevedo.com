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
    tw.exec = "unbuffer tailwindcss -i ./assets/styles/templates/main.css -o ./assets/styles/main.css --watch";
    tw2.exec = "unbuffer tailwindcss -i ./assets/styles/templates/single.css -o ./assets/styles/single.css --watch";
    hugo.exec = "hugo server -D";
  };

  dotenv = {
    enable = true;
    filename = ".env.local";
  };

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
