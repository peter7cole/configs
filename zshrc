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
alias blc='brew list --cask'
alias buc='brew upgrade --cask'
alias bucf='brew reinstall --cask --force'
# alias work='cd <work>; git status' # code . -r; 
alias c.='code .'
alias c2='cal -A 2'
alias echothis='echo $1'
alias l="osascript -e 'repeat with i from 0 to 1920' -e 'tell application \"System Events\" to keystroke \"_\"' -e 'log i*2' -e 'delay 120' -e 'end repeat';"
alias ll='ls -la'
function mkcd() { mkdir $1 && cd $1 }
alias mp4tomkv='for f in *.mp4; do mv "$f" "${f/mp4/mkv}"; done'
alias ns='node server.js'
alias nms='nodemon server.js'
alias settings='code ~/Library/Application\ Support/Code/User/settings.json'
alias s256="shasum -a 256 $1" # add filepath
alias update='source ~/.zshrc'
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
alias gb='git branch -vv'
alias gbd='git branch -D'
alias gc='git commit -m'
alias gc.='git checkout .'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcpm='git checkout master; git pull upstream master'
alias gd='git diff'
alias gdm='git diff upstream/master'
alias gp='git push origin $(git branch --show-current)'
function gacp() {
	git add . &&
	git commit -m "$1" &&
	git push origin $(git branch --show-current)
}
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
alias ylinks='(ls -l node_modules && ls -l node_modules/@*) | grep ^l'
alias ys='yarn start'
alias yt='yarn test'
alias ytg='yarn test:gauge --env=dev'
alias ytd='yarn test:gauge --env=dev --tags=dynamic-user'

## custom functions
# source: https://pastebin.com/raw/UWHMV2QF

# gpr() {
#   if [ $? -eq 0 ]; then
#     github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
#     branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
#     pr_url=$github_url"/compare/master..."$branch_name
#     open $pr_url;
#   else
#     echo 'failed to open a pull request.';
#   fi
# }

# commands() {
#   awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
# }

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
