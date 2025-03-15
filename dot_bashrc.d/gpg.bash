if [ -n "$(command -v gpg)" ]
then
  export GPG_TTY="$(tty)"
fi
