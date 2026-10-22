# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
 #ZSH_THEME="robbyrussell"
ZSH_THEME="zhann"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)

bindkey '^ ' autosuggest-accept

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# zoxide
# eval "$(zoxide init zsh)"
# alias cd=z

# utils
# alias cat=bat
# alias ls=lsd

# open
# alias open=xdg-open
# alias open=explorer.exe .

export PATH="$HOME/.local/bin":$PATH

# for kitty
alias clear_full="printf '\033[2J\033[3J\033[1;1H'"

# for correct CPM usage
# export CPM_SOURCE_CACHE=$HOME/.cache/CPM

# Proxy for terminal (curl, etc). Must be full URL, not just a port number.
# Switch: set ACTIVE_PROXY=hiddify or nekobox, then open a new terminal (or: source ~/.zshrc)
# Check: curl -s --max-time 8 https://ifconfig.me && echo
# export HIDDIFY_HTTP_PROXY="http://127.0.0.1:XXXX"
# export HIDDIFY_SOCKS_PROXY="socks5h://127.0.0.1:XXXX"
# export ACTIVE_PROXY="${ACTIVE_PROXY:-hiddify}"  # hiddify | off
# 
# case "$ACTIVE_PROXY" in
#   off)
#     unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY all_proxy ALL_PROXY
#     ;;
#   *)
#     export http_proxy="$HIDDIFY_HTTP_PROXY" https_proxy="$HIDDIFY_HTTP_PROXY"
#     export HTTP_PROXY="$HIDDIFY_HTTP_PROXY" HTTPS_PROXY="$HIDDIFY_HTTP_PROXY"
#     export all_proxy="$HIDDIFY_SOCKS_PROXY" ALL_PROXY="$HIDDIFY_SOCKS_PROXY"
#     ;;
# esac


