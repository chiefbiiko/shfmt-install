# shfmt-install

Tiny `sh` script that installs the [shfmt](https://github.com/mvdan/sh/releases) binary for `linux_x86_64` or `darwin_x86_64`. Please pull request to support more!

## Usage

`install.sh` sets up a `shfmt` executable in the directory indicated by its optional first argument or by default the current working directory. It prints the absolute path to the binary upon success.

### 1liner example of linting in CI

```
$(curl -fsSL https://raw.githubusercontent.com/chiefbiiko/shfmt-install/master/install.sh | sh) -d .
```

### Proper installation

```
curl -fsSL "https://raw.githubusercontent.com/chiefbiiko/shfmt-install/master/install.sh" | sh -s /usr/local/bin
shfmt -version
```

## License

[MIT](./LICENSE)