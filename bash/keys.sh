function keys()
{
  type openssl >/dev/null 2>&1 || echo "Please install openssl."
  eval "$(openssl aes-256-cbc -d -in $DOTFILE_PATH/bash/secrets/keys.enc -a)"
}

function keys_to_file()
{
  type openssl >/dev/null 2>&1 || echo "Please install openssl."
  openssl aes-256-cbc -d -in $DOTFILE_PATH/bash/secrets/keys.enc  -out $DOTFILE_PATH/bash/secrets/keys.tmp -a
}

function keys_encrypt()
{
  if [[ -f $DOTFILE_PATH/bash/secrets/keys.tmp ]]; then
    cd $DOTFILE_PATH
    echo "Encrypting keys.tmp and committing to repository."
    rm $DOTFILE_PATH/bash/secrets/keys.enc
    openssl aes-256-cbc -in $DOTFILE_PATH/bash/secrets/keys.tmp  -out $DOTFILE_PATH/bash/secrets/keys.enc -a
    git add -f $DOTFILE_PATH/bash/secrets/keys.enc
    echo "Done! Commit your key changes now (keyfile is already staged)"
    rm $DOTFILE_PATH/bash/secrets/keys.tmp
  fi
}
