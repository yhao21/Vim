# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/synferlo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




# ==================================
# Texlive 2020
# ==================================

PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH;export PATH
MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH;export MANPATH
INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH;export INFOPATH



# ==================================
# keymode
# ==================================
alias kk='xmodmap ~/.xmodmap'


# ==================================
# brightness
# ==================================
alias b1='sudo brightnessctl s 10%'
alias b2='sudo brightnessctl s 20%'
alias b3='sudo brightnessctl s 30%'
alias b4='sudo brightnessctl s 40%'
alias b5='sudo brightnessctl s 50%'
alias b6='sudo brightnessctl s 60%'
alias b7='sudo brightnessctl s 70%'
alias b8='sudo brightnessctl s 80%'
alias b9='sudo brightnessctl s 90%'
alias b10='sudo brightnessctl s 100%'




# ==================================
# mouse speed
# ==================================
alias slow='xinput set-prop "USB OPTICAL MOUSE" "Coordinate Transformation Matrix" 0.2 0 0 0 0.2 0 0 0 1'


# ==================================
# disable touchpad
# ==================================
alias cj='xinput --disable "SynPS/2 Synaptics TouchPad"'
alias ck='xinput --enable "SynPS/2 Synaptics TouchPad"'


# ==================================
# neofetch
# ==================================
alias s='neofetch'


# ==================================
# my_fzf
# ==================================
alias ff='python3 ~/mycommand/my_fuzzyfilefinder.py'



# ==================================
# R script
# ==================================
alias r='Rscript'



# ==================================
# Run Wechat
# ==================================
alias we="LANG=zh_CN.UTF-8 wine /home/synferlo/.wine/dosdevices/c:/'Program Files (x86)'/Tencent/WeChat/WeChat.exe"
#alias we="LC_ALL=zh_CN.UTF-8 wine /home/synferlo/.wine/dosdevices/c:/'Program Files (x86)'/Tencent/WeChat/WeChat.exe"





