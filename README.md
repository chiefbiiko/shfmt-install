# shfmt-install

![ci](https://github.com/chiefbiiko/shfmt-install/workflows/ci/badge.svg)

Tiny `sh` script that installs the [shfmt](https://github.com/mvdan/sh/releases) binary for `linux_x86_64` or `darwin_x86_64`. Please pull request to support more!

## Usage

`install.sh` sets up a `shfmt` executable in the directory indicated by its optional first argument or by default the current working directory. Pass an optional tag as second argument, defaults to latest. Prints the absolute path to the binary upon success.

### 1liner example of linting in CI

```
$(curl -fsSL https://raw.githubusercontent.com/chiefbiiko/shfmt-install/v0.1.0/install.sh | sh) -d .
```

### Proper installation

```
curl -fsSL https://raw.githubusercontent.com/chiefbiiko/shfmt-install/master/install.sh | sh -s /usr/local/bin v2.6.4
shfmt -version
```

## License

[MIT](./LICENSE)