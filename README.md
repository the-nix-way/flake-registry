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

The flake registry enables you to add flake inputs to a Nix flake's `outputs`
without explicitly adding them to the `inputs` attribute. Here's an example:

```nix
{
  # No inputs!

  outputs = { self, nixpkgs }: {
    # Do something with nixpkgs
  };
}
```

[flakes]: https://nixos.wiki/wiki/Flakes
[registry]: https://raw.githubusercontent.com/NixOS/flake-registry/master/flake-registry.json