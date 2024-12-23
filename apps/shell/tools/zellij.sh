# Get the arch and OS
ARCH=$(uname -m)
OS=$(uname -s)

# Determinar el nombre del archivo según el sistema operativo y la arquitectura
if [ "$OS" == "Darwin" ]; then
  FILENAME="zellij-${ARCH}-apple-darwin.tar.gz"
  URL="https://github.com/zellij-org/zellij/releases/latest/download/$FILENAME"
  echo "Descargando Zellij para macOS..."
elif [ "$OS" == "Linux" ]; then
  FILENAME="zellij-${ARCH}-unknown-linux-musl.tar.gz"
  URL="https://github.com/zellij-org/zellij/releases/latest/download/$FILENAME"
  echo "Descargando Zellij para Linux..."
else
  echo "Sistema operativo no compatible: $OS"
  exit 1
fi

ZELLIJ_OUTPUT_DIR="$HOME/.local/bin"

# Descargar el archivo
curl -L -o "$ZELLIJ_OUTPUT_DIR/$FILENAME" "$URL"

tar -xvf "$ZELLIJ_OUTPUT_DIR/$FILENAME"
rm "$ZELLIJ_OUTPUT_DIR/$FILENAME"

chmod +x "$ZELLIJ_OUTPUT_DIR/zellij"
