
# Historial
HISTFILE=~/.cache/zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Variables
export EDITOR="nvim"

# Usar vi
bindkey -v

# Aliases
alias v="nvim"

# Cargar módulos
autoload -U compinit && compinit
autoload -Uz promptinit && promptinit
autoload -U colors && colors
autoload -U tetris
autoload -U vcs_info

zstyle ':vcs_info:git:*' formats '%b'

# Opciones de completado
zstyle ':completion:*' menu select # tab abre menú cmp
zstyle ':completion:*' special-dirs true # forzar . y .. para que se muestren
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 #  colorizar menú cmp
zstyle ':completion:*' squeeze-slashes false # desactivar permitir expanción de /*/

# Opciones principales
setopt PROMPT_SUBST
setopt NO_PROMPT_SP # No autolimpiar blanklines


export PS1="%B%F{green}%n%f@%m%b %F{cyan}%1~%f %# "
precmd() { 
    vcs_info 
    if [[ -n "$vcs_info_msg_0_" ]]; then
        RPROMPT="%F{magenta}[ ${vcs_info_msg_0_}]%f %T"
    else
        RPROMPT="%T"  # Si no estamos en un repositorio Git, solo muestra la hora
    fi
}

# Plugins
if [[ -s /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [[ -s /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

bindkey '^y' autosuggest-accept # CTRL + y : Aceptar sugerencia
