#!/bin/zsh

# ── Leaf Launcher ──
# This script is wrapped into a native Mac app using Platypus.
# See setup instructions below.

# --- EDIT THIS LINE to point to your Leaf folder ---
LEAF_DIR="'/Applications/Leaf Markdown Editor'"
# ----------------------------------------------------

PORT=8080

# Start Python server if not already running
if ! lsof -i :$PORT -sTCP:LISTEN -t &>/dev/null; then
  cd "$LEAF_DIR"
  nohup python3 -m http.server $PORT > /tmp/leaf-server.log 2>&1 &
  sleep 1
fi

# Open in Brave or Chrome app mode (no browser UI)
BRAVE="/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ -f "$BRAVE" ]; then
  "$BRAVE" --app="http://localhost:$PORT/editor.html" --window-size=1200,800
elif [ -f "$CHROME" ]; then
  "$CHROME" --app="http://localhost:$PORT/editor.html" --window-size=1200,800
else
  open "http://localhost:$PORT/editor.html"
fi
