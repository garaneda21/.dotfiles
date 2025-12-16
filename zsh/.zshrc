
# Historial
HISTFILE=~/.cache/zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Variables
export EDITOR="nvim"

# Usar vi
bindkey -e

# Aliases
alias v="nvim"
alias f="ranger"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Cargar módulos
autoload -U compinit && compinit
autoload -Uz promptinit && promptinit
autoload -U colors && colors
autoload -U tetris
autoload -U vcs_info
autoload edit-command-line; zle -N edit-command-line

zstyle ':vcs_info:git:*' formats '%b'

# Opciones de completado
zstyle ':completion:*' menu select # tab abre menú cmp
zstyle ':completion:*' special-dirs true # forzar . y .. para que se muestren
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} #  colorizar menú cmp
zstyle ':completion:*' squeeze-slashes false # desactivar permitir expanción de /*/

# Opciones principales
setopt PROMPT_SUBST
setopt NOPROMPTSP # No autolimpiar blanklines
setopt HISTIGNORESPACE

precmd() { 
    vcs_info 
    if [[ -n "$vcs_info_msg_0_" ]]; then
        PS1="%B%F{green}%n%f@%m%b %F{cyan}%1~%f%F{magenta} ( ${vcs_info_msg_0_}) %f%# "
    else
        PS1="%B%F{green}%n%f@%m%b %F{cyan}%1~%f %# "
    fi
}

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null

# bindkey '^y' autosuggest-accept # CTRL + y : Aceptar sugerencia
bindkey '^e' edit-command-line

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
