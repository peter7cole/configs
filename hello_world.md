# Hello World

## Homebrew

- [Main page](https://brew.sh/)
- Install via command line, the script explains what it will do and then pauses before it does it  
  `% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Git

- [Install via brew](https://formulae.brew.sh/formula/git)  
  `% brew install git`

## Node

- [Install via nvm](https://github.com/nvm-sh/nvm)
- Install via curl  
  `% curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`
- Running the above command downloads a script and runs it. The script clones the nvm repository to `~/.nvm`, and attempts to add
  the source lines from the snippet below to the correct profile file (`~/.bash_profile`, `~/.zshrc`, `~/.profile`, or `~/.bashrc`)  
  
  ```shell
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```
- Install Node via command line  
  `% nvm install 16`  
  `% nvm alias default 16`
- Other commands
  `% nvm ls-remote --lts`  
  `% nvm ls`  
  `% nvm use <a_version_that_is_installed>`

## VS Code

- [Install via brew](https://formulae.brew.sh/cask/visual-studio-code)  
  `% brew install --cask visual-studio-code`
- Install extensions
  - Bracket Pair Colorizer
  - ESLint
  - TSLint
  - Gauge
  - GitLens
  - Halcyon Theme
  - indent-rainbow
  - Jest Runner
  - Prettier - Code formatter

## oh-my-zsh

- Install via curl  
  `% sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Customize `~/.zshrc` using `<repos>/configs/zshrc.txt`
