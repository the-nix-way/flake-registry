# flake-registry

This is a CLI tool that lists all of the entries in the most recent [flake
registry][registry].

```shell
# Without installation
nix run github:the-nix-way/flake-registry

# With installation
nix profile install github:the-nix-way/flake-registry
flake-registry
```

[flakes]: https://nixos.wiki/wiki/Flakes
[registry]: https://raw.githubusercontent.com/NixOS/flake-registry/master/flake-registry.json