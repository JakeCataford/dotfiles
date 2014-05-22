
![https://www.dropbox.com/s/a5ibh0kf6en38zx/Screenshot%202014-05-22%2014.55.51.png]()

Jake's Dotfiles
========

*Bling Bling :octopus:*

These are my dotfiles that I use for development. Mainly, they are a new bash prompt and a long vimrc with a nice install script.

### Prerequisites:

Uh, I cant be sure. I know these ones:
- meslo for poweline should be your font in your terminal: https://github.com/Lokaltog/powerline-fonts/tree/master/Meslo
- I use iTerm on osx, so maybe best results with it?
- Install the solarized theme for your terminal?

### Installation

Just clone and run ./install. Maybe it will work?
You will get a prompt to compile YouCompleteMe, do it the first time you run install.

### What is in it?

A nice long .vimrc that was partially stolen (and heavily modified) from somewhere (thoughtbot?)

vimrc:
  - Lots of plugins, at the top of the file
  - `Shift-ijkl` window navigation
  - Leader is comma
  - `Leader-tab` to change tabs
  - airline, autocompletes, c++ and c# completion too.
  - rails and ruby are my main environments, so they are well supported.
  - airline
  - mouse scrolling

Bash_profile:
  - Git completions
  - Nice looking prompt.
  - Aliases for bundle, rails, git, etc...

