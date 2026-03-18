{
  description = ''
    typst
  '';

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
      { self, nixpkgs }:
      let
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.x86_64-linux.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            typst
          ];
          shellHook = ''
            echo "you are now typsting like a boss"
            '';
        };
      };

}