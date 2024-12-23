# Get the arch
ARCH=$(uname -m)

FILENAME="zellij-$ARCH-unknown-linux-musl.tar.gz"

URL=$(curl -s https://api.github.com/repos/zellij-org/zellij/releases/latest | jq -r ".assets[] | select(.name == \"$FILENAME\") | .browser_download_url")

ZELLIJ_OUTPUT_DIR="$HOME/.local/bin"

curl -L -o "$ZELLIJ_OUTPUT_DIR/$FILENAME" "$URL"

tar -xvf "$ZELLIJ_OUTPUT_DIR/$FILENAME" -C "$ZELLIJ_OUTPUT_DIR"
rm "$ZELLIJ_OUTPUT_DIR/$FILENAME"

chmod +x "$ZELLIJ_OUTPUT_DIR/zellij"

ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"

mkdir -p $ZELLIJ_CONFIG_DIR
cp $PROJECT_PATH/apps/shell/tools/config.kdl $ZELLIJ_CONFIG_DIR/config.kdl
