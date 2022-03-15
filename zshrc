# zsh Config

ZSH_THEME="robbyrussell"
export ZSH="/Users/$(whoami)/.oh-my-zsh"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export HOMEBREW_INSTALL_BADGE='🥳'

source $ZSH/oh-my-zsh.sh

plugins=(
	git
	macos
	web-search
)

# User configuration

ZSH_DISABLE_COMPFIX=true


# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Shell Aliases

alias bu='echo "--- homebrew update"; brew update;
	echo "--- outdated"; brew outdated;
	echo "--- upgrade"; brew upgrade;
	echo "--- cleanup"; brew cleanup;
	echo "--- casks"; brew list --cask;
	echo "--- done"'
alias buc='brew upgrade --cask'
# alias work='cd <work>; git status' # code . -r; 
alias c.='code .'
alias echothis='echo $1'
alias l="osascript -e 'repeat with i from 0 to 3840' -e 'log i / 2' -e 'tell application \"System Events\" to keystroke \"_\"' -e 'delay 30' -e 'end repeat';"
alias ll='ls -la'
alias ns='node server.js'
alias nms='nodemon server.js'
alias settings='code ~/Library/Application\ Support/Code/User/settings.json'
alias s256="shasum -a 256 $1" # add filepath
alias update='source ./.zshrc'
alias whatip='curl http://ipecho.net/plain; echo'
alias whatres='system_profiler SPDisplaysDataType | grep Resolution'
alias whatkernel='uname -a'
alias whatpackages='npm list --g --depth=0'
alias whatsize='du -sh .'
alias whatpid='ps -ax | grep $1'
alias zrc='open ~/.zshrc'

# Git Aliases

alias gs='git status'
alias ga='git add .; git status'
alias gc='git commit -m'
alias gb='git branch -vv'
alias gbd='git branch -D'
alias gc.='git checkout .'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcpm='git checkout master; git pull upstream master'
alias gd='git diff'
alias gdm='git diff upstream/master'
alias gpm='git pull upstream master'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias glg='git log --graph'
alias glgo='git log --graph --oneline'
alias gl2='glgo -2'
alias gr='git remote -v'
alias grh1='git reset HEAD^' # reset to last commit
alias grh2='git reset HEAD~2' # reset to two commits back
alias gst='git stash'
alias gsta='git stash apply'

# Yarn Aliases

# alias yy='open -na "Google Chrome" --args "http://localhost:4000/"; yarn start;'
# alias yyi='open -na "Google Chrome" --args --incognito "http://localhost:4000/"; yarn start;'
alias ybt='yarn build:translations'
alias ylinks='( ls -l node_modules ; ls -l node_modules/@* ) | grep ^l'
alias ys='yarn start'
alias yt='yarn test'
alias ytg='yarn test:gauge --env=dev'
alias ytd='yarn test:gauge --env=dev --tags=dynamic-user'


# Other Info

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
