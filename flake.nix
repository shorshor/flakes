{ pkgs }:

{
  elixir = pkgs.mkShell {
    name = "elixir-env";
    
    packages = with pkgs; [ elixir livebook postgresql ];

    shellHook = ''
      echo "Welcome to a Nix development environment for Elixir, Livebook, and Postgres!"
      mix local.hex --if-missing --force
      mix archive.install hex phx_new --force
    '';
  };
}
