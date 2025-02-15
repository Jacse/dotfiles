# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fast-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Add path to Python installed with Homebrew
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
# Add bin folder (e.g. used by Poetry)
export PATH="$HOME/.local/bin:$PATH"
# Add spicetify
export PATH=$PATH:~/.spicetify

alias nah="git reset --hard && git clean -df"
alias n="pnpm nx"
alias home="cd ~"
alias clean="git fetch && git branch --merged master | grep -v '^\* master' | xargs -n 1 -r git branch -d && git branch -vv | grep ': gone]' | grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -d"
alias lb=$'git branch --sort="-committerdate" --format="%(color:green)%(committerdate:relative)%09%(color:reset) %(refname:short)" --color=always | head -n 16'
alias leya="cd ~/Projects/leya/leya"
alias lleya="lvim ~/Projects/leya/leya"
