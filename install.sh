#!/usr/bin/env sh
# usage:
#   - ./install.sh [dir] [tag]
#   - curl -fsSL https://raw.githubusercontent.com/chiefbiiko/shfmt-install/v0.1.0/install.sh | sh -s [dir] [tag]

shfmt="${1:-"$(pwd)"}"/shfmt

case "$(uname -m)" in
  x86_64) arch="_amd64" ;;
  *)
    printf "unsupported arch\n" >&2
    exit 1
    ;;
esac

case "$(uname | tr '[:upper:]' '[:lower:]')" in
  linux*) suffix="_linux$arch" ;;
  darwin*) suffix="_darwin$arch" ;;
  *)
    printf "unsupported os\n" >&2
    exit 1
    ;;
esac

asset_path="$(
  curl -fsSL https://github.com/mvdan/sh/releases | 
    grep -oE "mvdan\/sh\/releases\/download\/.+\/shfmt_.+$suffix" | 
      head -n 1)"

curl -fsSL# -o "$shfmt" "https://github.com/$asset_path"

chmod +x "$shfmt"

printf "%s\n" "$shfmt"
