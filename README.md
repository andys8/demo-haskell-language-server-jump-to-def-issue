# Demo: Jump to definition issue

See <https://github.com/haskell/haskell-language-server/issues/1286>

## Update: Solution

Issue seems to be solved: <https://github.com/haskell/haskell-language-server/issues/1286#issuecomment-778673926>


## Steps

- Open `test/Spec.hs`
- Jump to def with `testHelper` works
- Jump to def with `libraryFunction` doesn't work

## Known workaround

See branch `workaround`.

`package.yaml` contains:

```yaml
tests:
  demo-hls-jump-to-definition-test:
    source-dirs: test
    dependencies: demo-hls-jump-to-definition
```

if `src` is additionally added as directory, it'll work.
Downside: Higher compile times, redundant

```yaml
tests:
  demo-hls-jump-to-definition-test:
    source-dirs:
      - test
      - src
    dependencies: demo-hls-jump-to-definition
```

## Versions

```
haskell-language-server version: 0.9.0.0 (GHC: 8.8.3) (GIT hash: 6b6c405d14a29ab3d2e7dbb4e2f79229758d26ba)
cabal:          3.2.0.0
stack:          2.5.1
ghc:            8.8.3
```
