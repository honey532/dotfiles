export PATH="$(
  home_bin_path="$HOME/bin"
  local_bin_path="$HOME/.local/bin"
  if [ -n "$(command -v yarn)" ]
  then
    maybe_yarn_bin_path=":$(yarn global bin)"
  fi

  joined_bin_path="${home_bin_path}:${local_bin_path}${maybe_yarn_bin_path}"
  case "$PATH" in
    ${joined_bin_path}*)
      echo "$PATH"
      ;;
    *)
      echo "${joined_bin_path}:$PATH"
      ;;
  esac
)"
