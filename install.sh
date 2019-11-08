#!/usr/bin/env sh

# TODO: allow passing version argument, default to latest

# usage:
#   - ./install.sh "/some/optional/install/dir"
#   or
#   - curl -fsSL "https://raw.githubusercontent.com/chiefbiiko/shfmt-install/master/install.sh" | sh -s "/some/optional/install/dir"

shfmt="${1:-"$(pwd)"}"/shfmt

case "$(uname -m)" in
  x86_64) arch="_amd64";;
  *) printf "unsupported arch\n" >&2; exit 1;;
esac

case "$(uname | tr '[:upper:]' '[:lower:]')" in
  linux*) suffix="_linux$arch";;
  darwin*) suffix="_darwin$arch";;
  *) printf "unsupported os\n" >&2; exit 1;;
esac

curl -fsSL "https://github.com/mvdan/sh/releases/download/v2.6.4/shfmt_v2.6.4$suffix" > "$shfmt"
chmod +x "$shfmt"
printf "%s\n" "$shfmt"