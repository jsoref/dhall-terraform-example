# dhall-terraform-example.git

This repository contains example input/output for experimenting with dhall-terraform.

## dhall-terraform

There's a [`dhall-terraform` repository](https://github.com/mujx/dhall-terraform) which
seems quite appealing for my use case, but I couldn't get it to work.

I tried using [`stack`](https://github.com/commercialhaskell/stack) installed using
[`🍺brew`](https://github.com/Homebrew/brew). But that failed.

I [tried using a current version](https://github.com/jsoref/dhall-terraform/tree/m1) of [`ghc`](https://github.com/ghc/ghc).

I was able to build [`dhall-terraform`](https://github.com/jsoref/dhall-terraform/tree/fizzixnerd) using [`fizzixnerd/dhall-terraform`](https://github.com/fizzixnerd/dhall-terraform/).

### inputs

dhall-terraform wants a provider json.

I'm using `Terraform v1.2.8` from [`tfenv`](https://github.com/tfutils/tfenv) (installed w/ 🍺brew).

```
terraform init
terraform providers schema -json > terraform-schema.json
```

That generates a nice looking machine readable json file.

### processing

```haskell
/Users/jsoref/code/dhall-terraform/dist-newstyle/build/aarch64-osx/ghc-8.10.7/dhall-terraform-0.4.0/x/dhall-terraform-libgen/build/dhall-terraform-libgen/dhall-terraform-libgen -o terraform-google -f terraform-schema.json -p google
dhall-terraform-libgen: Map.!: given key is not an element in the map
CallStack (from HasCallStack):
  error, called at libraries/containers/containers/src/Data/Map/Internal.hs:633:17 in containers-0.6.5.1:Data.Map.Internal
```
