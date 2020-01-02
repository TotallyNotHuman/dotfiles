# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tnh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(chucknorris common-aliases debian encode64 extract git history sudo systemd vscode)

# disable completion verification stuff
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# custom configuration

# terminal sanity check
if [ "$TERM" != "xterm-256color" ]; then
	PS1="%F{green}%n%f@%F{green}%M%f %B%F{blue}%~%b %B%F{green}%# %f%F{white}"
fi

# aliases

# unset garbage -i aliases
unalias cp
unalias mv
unalias rm

# fancy git log aliases
alias glg1="git lg1"
alias glg2="git lg2"
alias glg3="git lg3"
alias glg1s="git lg1-specific"
alias glg2s="git lg2-specific"
alias glg3s="git lg3-specific"

# workflow-specific git aliases
alias gmn="gm --no-ff"
alias gmnd="gmn develop"
alias gpat="gp --all && gp --tags"
alias gpen="git prune --expire=now"
alias gpend="gpen --dry-run"
alias gstam="gsta -m"
alias gt="git tag"

# nordvpn aliases
alias nv="nordvpn"
alias nvc="nv c"
alias nvd="nv d"
alias nvs="nv status"

# ksp SIGSTOP/CONT aliases
alias sksp="pkill -STOP KSP"
alias cksp="pkill -CONT KSP"

# prime-select settings + reboot
alias psn="sudo prime-select nvidia && sudo reboot"
alias psi="sudo prime-select intel && sudo reboot"
alias psq="prime-select query"

# global variables

# all hail vim/aptitude
export EDITOR='vim'
export apt_pref='aptitude'

# ssh key path
export SSH_KEY_PATH="~/.ssh/rsa_id"

# android sdk path
export ANDROID_HOME="/home/tnh/Android/Sdk"

# one PATH to rule them all
export PATH="/home/tnh/.cargo/bin:/home/tnh/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/tnh/.dotnet/tools:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/usr/local/bin/processing-3.4:/home/tnh/Android/Sdk/tools:/home/tnh/Android/Sdk/platform-tools"
