function keys()
{
  type openssl >/dev/null 2>&1 || echo "Please install openssl."
  eval "$(openssl aes-256-cbc -d -in $DOTFILE_PATH/bash_profile_scripts/secrets/keys.enc -a)"
}
