export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

SCRIPTPATH=$(realpath ~/.zshrc)

export DOTFILE_PATH=$(dirname $SCRIPTPATH)
# Update if there's upstream changes, dont pipe stderr to dev null
cd $DOTFILE_PATH && git pull origin master >/dev/null 2>&1

cd $DOTFILE_PATH

for file in $DOTFILE_PATH/../zsh/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

# go home.
cd ~
if [ -z "$TMUX" ]; then
  tmux
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export TMUX_POWERLINE_DEBUG_MODE_ENABLED_DEFAULT="false"
export TMUX_POWERLINE_PATCHED_FONT_IN_USE_DEFAULT="true"
export TMUX_POWERLINE_THEME_DEFAULT="default"
export TMUX_POWERLINE_SEG_BATTERY_TYPE="percentage"
export TMUX_POWERLINE_SEG_WEATHER_UNIT="c"
export TMUX_POWERLINE_SEG_WEATHER_UPDATE_PERIOD="120"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="3369"

# added by travis eem
[ -f /Users/JakeCataford/.travis/travis.sh ] && source /Users/JakeCataford/.travis/travis.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
