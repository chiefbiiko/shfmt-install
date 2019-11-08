#/usr/bin/env sh

# usage:
#   - ./install.sh "/some/optional/install/dir"
#   or
#   - curl -fsSL "https://raw.githubusercontent.com/chiefbiiko/shfmt-install/master/install.sh" | sh -s "/some/optional/install/dir"
#   then to style like Google: /some/optional/install/dir/shfmt -i 2 -ci "$0"

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*) SUFFIX="_linux_amd64";;
  darwin*) SUFFIX="_darwin_amd64";;
  # TODO: allow more ozarx
  *) printf "unsupported os or arch\n" >&2; exit 1;;
esac

FILE="${1:-"$(pwd)"}"/shfmt
curl -fsSL "https://github.com/mvdan/sh/releases/download/v2.6.4/shfmt_v2.6.4${SUFFIX}" > "$FILE"
chmod +x "$FILE"
printf "${FILE}\n"