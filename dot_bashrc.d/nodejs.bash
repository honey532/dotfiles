# pnpm
export PNPM_HOME="$(readlink -f  ~/.local/share/pnpm)"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
