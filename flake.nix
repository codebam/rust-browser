{
  inputs = {
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          cargo
          rust-analyzer
          pkg-config
          gobject-introspection
          graphene
          gtk4
          atk
          webkitgtk_4_1
        ];
      };
    }
  );
}
