# Dotfiles

Recommends and installs useful software for creative workspace

## UI App Checklist
  - [ ] Chrome
  - [ ] Notion
  - [ ] Lightroom
  - [ ] Photoshop
  - [ ] [Spotify](https://open.spotify.com/)
  - [ ] [IntelliJ](https://www.jetbrains.com/idea/)
  - [ ] [Pycharm](https://www.jetbrains.com/pycharm/)
  - [ ] [Visual Studio Code](https://code.visualstudio.com/)
  - [ ] Xterm
  - [ ] [Docker](https://www.docker.com/)
  - [ ] git 
  - [ ] [gpgtools](https://gpgtools.org/)
  - [ ] jdk 7, 8 and latest

## Shell install
  install with `./setup.sh`

  - [ ] xcode
  - [ ] homebrew
  - [ ] curl
  - [ ] gnupg
  - [ ] zsh (ohmyzsh)
  - [ ] jq
  - [ ] ansible
  - [ ] bat
  - [ ] python suite: pyenv, pyenv-virtualenv, virtualenv
  - [ ] copies actual dotfiles
  - [ ] tmux
  - [ ] vim vundle
  - [ ] fonts powerline

## Post installation
  - setup some of the powerline fonts as terminal (iTerm) font (iTerm2 -> preferences)
  - ensure correct git email and name in ($HOME/.giconfig)
  - upload new gpg key to github (gpg suite -> copy)
  - setup github name and emal
    ```zsh
      git config --global user.name "FirstName LastName"
      git config --global user.email name@email.com
    ```
  - setup intellij shortcuts

## Aliases

### Docker
  - `dc`  - `docker-compose`
  - `dcd` - `docker-compose -up -d`

### Github
  - `gfr`  - rebases current branch on top of the main branch
  - `gfrc` - rebases current branch on top of the current branch in origin branch

### K8
  - `k`  - kubectl
  - `kx` - kubectx
  - `ks` - kubens


## IntelliJ Custom Shortuts
  - `C - Shift - \` - split vertically and move right
  - `C - Shift - '` - split horizontally
  - `C - ]`         - go to next splitter (tab)
  - `C - [`         - go to previouos splitter (tab)
  - `C - Shift - ]` - go to next window
  - `C - Shift - ]` - go to previous window

# Other Commands

- `echo foo | pbcopy` - copies "foo" to clipboard
- `pbpaste` - prints copied content
- `C-p` - prints copied content
