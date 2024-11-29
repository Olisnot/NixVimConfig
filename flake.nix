{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, nixpkgs, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          pkgs = import nixpkgs { inherit system; overlays = [
            (final: prev: {
              neovim-unwrapped = prev.neovim-unwrapped.overrideAttrs (old: {
                patches = old.patches ++ [
        # Fix byte index encoding bounds.
        # - https://github.com/neovim/neovim/pull/30747
        # - https://github.com/nix-community/nixvim/issues/2390
        (final.fetchpatch {
          name = "fix-lsp-str_byteindex_enc-bounds-checking-30747.patch";
          url = "https://patch-diff.githubusercontent.com/raw/neovim/neovim/pull/30747.patch";
          hash = "sha256-2oNHUQozXKrHvKxt7R07T9YRIIx8W3gt8cVHLm2gYhg=";
        })
      ];
    });
  })
]; };
nixvimLib = nixvim.lib.${system};
nixvim' = nixvim.legacyPackages.${system};
nixvimModule = {
  inherit pkgs;
  module = import ./config; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
        };
      };
    }
