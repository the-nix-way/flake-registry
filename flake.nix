{
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        run = pkg: "${pkgs.${pkg}}/bin/${pkg}";
      in
      {
        packages.default = pkgs.writeScriptBin "flake-registry" ''
          ${run "curl"} https://raw.githubusercontent.com/NixOS/flake-registry/master/flake-registry.json | \
            ${run "jq"} -r '.flakes[].from.id'
        '';
      });
}
