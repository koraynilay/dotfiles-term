# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/koraynilay/.zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kora"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh_custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	#zsh-syntax-highlighting
	vi-mode
	zsh-system-clipboard
	zsh-autosuggestions
)

# vi-mode options (see $ZSH/plugins/vi-mode/README.md)
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion) # https://github.com/zsh-users/zsh-autosuggestions#suggestion-strategy
ZSH_AUTOSUGGEST_MANUAL_REBIND="yes" # https://github.com/zsh-users/zsh-autosuggestions#disabling-automatic-widget-re-binding

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
#export PAGER='vimpager'

export REPORTTIME=5

export SAVEHIST=1000000
export HISTSIZE=$SAVEHIST
setopt SHARE_HISTORY

export TUIR_BROWSER='feh'
export ZSH_TODO="$HOME/.zsh_todo"
export ZSH_GITS="$HOME/.zsh_gits"
export ZSH_SCHOOL="$HOME/.zsh_school"
export DXVK_HUD=api,frametimes,fps,gpuload
export PATH="$PATH:$HOME/.local/bin:$HOME/linux-custom-scripts"
# relb
export PATH="$PATH:/Q/relb/SourceUE4/Engine/Binaries/Linux"
#export PATH="$PATH:/home/koraynilay/.local/bin:/usr/bin"


# Java theme same as GTK
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=it_IT.UTF-8
export LANG=it_IT.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
 #  export EDITOR='vim'
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
# bindkey -v
setopt extended_glob
unsetopt BEEP #all
#unsetopt LIST_BEEP #autocompletion
#unsetopt HIST_BEEP #others
#neofetch | lolcat
if [ -z "$SSH_CONNECTION" ];then
	if ! [[ $(tty) = /dev/tty* ]] && [ -f $ZSH_TODO ];then
		cat $ZSH_TODO
	fi
fi
if [ -f $ZSH_GITS ];then
	source ~/.zsh_gits
fi
if [ -f $ZSH_SCHOOL ];then
	source ~/.zsh_school
fi
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi
bindkey "^Xa" _expand_alias
source /etc/profile.d/vte.sh
source /etc/profile.d/discord-rpc-wine.sh

autoload -Uz history-search-end

# this works (on 2021-06-24)
bindkey '^P' up-line-or-beginning-search
bindkey '^N' down-line-or-beginning-search
# doesn't work anymore for some reason (on 2021-06-24)
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
#
#bindkey -M vicmd '^[[A' history-beginning-search-backward-end \
#                 '^[OA' history-beginning-search-backward-end \
#                 '^[[B' history-beginning-search-forward-end \
#                 '^[OB' history-beginning-search-forward-end
#bindkey -M viins '^[[A' history-beginning-search-backward-end \
#                 '^[OA' history-beginning-search-backward-end \
#                 '^[[B' history-beginning-search-forward-end \
#                 '^[OB' history-beginning-search-forward-end
#
#bindkey '^P' history-beginning-search-backward-end \
#        '^N' history-beginning-search-forward-end
#bindkey '^P' history-beginning-search-backward-end \
#                 '^N' history-beginning-search-forward-end
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey '^[[3~' delete-char
bindkey "^[[Z" reverse-menu-complete

bindkey "^[[1;5C" emacs-forward-word
bindkey "^[[1;5D" emacs-backward-word 
bindkey "^F" autosuggest-accept

#bindkey '^ ' autosuggest-accept
KEYTIMEOUT=1

#eval $(thefuck --alias)
# include Mycroft commands
#source ~/.profile_mycroft
#source /etc/profile.d/mycroft.zsh

export FZF_DEFAULT_OPTS='--bind ctrl-j:accept,ctrl-k:kill-line'
fzf_keys="/usr/share/fzf/key-bindings.zsh"
[ -f $fzf_keys  ] && source $fzf_keys

# for Discord Rich Presence on wine/proton games
export WINEDLLPATH="$WINEDLLPATH:/usr/lib/discord-rpc-wine/i686:/usr/lib/discord-rpc-wine/x86_64"
export WINEDLLOVERRIDES="$WINEDLLOVERRIDES;discord-rpc=b,n"
