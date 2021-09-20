# Dotfiles

Recommends and installs useful software for creative workspace

## UI install
  - chrome
  - evernote
  - lightroom
  - photoshop
  - spotify
  - intellij
  - pycharm
  - xterm
  - docker
  - raindrop
  - [gpgtools](https://gpgtools.org/)
  - jdk 7, 8 and latest

## Shell install
  install with `./setup.sh`

  - xcode
  - homebrew
  - curl
  - zsh (ohmyzsh)
  - copies actual dotfiles
  - tmux
  - vim vundle
  - fonts powerline

## Post installation
  - setup some of the powerline fonts as terminal (iTerm) font (iTerm2 -> preferences)
  - ensure correct git email and name in ($HOME/.giconfig)
  - upload new gpg key to github (gpg suite -> copy)
  - setup intellij shortcuts

## Aliases

### Docker
  - `dc`  - `docker-compose`
  - `dcd` - `docker-compose -up -d`

### Github
  - `gfr`  - rebases current branch on top of the main branch
  - `gfrc` - rebases current branch on top of the current branch in origin branch
  - 

### K8
  - `k`  - kubectl
  - `kx` - kubectx
  - `ks` - kubens


## IntelliJ custom shortuts
  - `C - Shift - \` - split vertically and move right
  - `C - Shift - '` - split horizontally
  - `C - ]`         - go to next splitter (tab)
  - `C - [`         - go to previouos splitter (tab)
  - `C - Shift - ]` - go to next window
  - `C - Shift - ]` - go to previous window
