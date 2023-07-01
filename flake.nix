{ pkgs }:

{
  elixir = pkgs.mkShell {
    name = "elixir-env";
    
    packages = with pkgs; [ elixir ];

    shellHook = ''
      echo "Welcome to a Nix development environment for Elixir!"
    '';
  };

  livebook = pkgs.mkShell {
    name = "livebook-env";
    
    packages = with pkgs; [ livebook ];

    shellHook = ''
      echo "Welcome to a Nix development environment for Livebook!"
    '';
  };

  postgres = pkgs.mkShell {
    name = "postgres-env";
    
    packages = with pkgs; [ postgresql ];

    shellHook = ''
      echo "Welcome to a Nix development environment for Postgres!"
    '';
  };

  phoenix = pkgs.mkShell {
    name = "phoenix-env";
    
    packages = with pkgs; [ elixir ];

    shellHook = ''
      echo "Welcome to a Nix development environment for Phoenix!"
      mix local.hex --if-missing --force
      mix archive.install hex phx_new --force
    '';
  };
}
