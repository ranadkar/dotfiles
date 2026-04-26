#!/usr/bin/env bash
set -euo pipefail

CONFIG_DIR="$HOME/.config"

NVIM_SRC="./nvim"
TMUX_SRC="./tmux"

NVIM_DST="$CONFIG_DIR/nvim"
TMUX_DST="$CONFIG_DIR/tmux"

mkdir -p "$CONFIG_DIR"

rm -rf "$NVIM_DST"
rm -rf "$TMUX_DST"

cp -r "$NVIM_SRC" "$NVIM_DST"
cp -r "$TMUX_SRC" "$TMUX_DST"

cat >> "$BASH_ALIASES" <<'EOF'

alias v="nvim"
alias tn="tmux new-session -s"
alias tl="tmux list-sessions"
alias ta="tmux attach-session"
EOF

echo "done"
