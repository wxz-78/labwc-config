# ~/.bashrc

# Si no es sesión interactiva, salir
[[ $- != *i* ]] && return

# --------------------------------------------------
# VARIABLES Y ENTORNO
# --------------------------------------------------
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=5000
export HISTFILESIZE=10000
shopt -s histappend  # Apenda al historial en vez de sobrescribirlo

# --------------------------------------------------
# PROMPT ULTRA CLEAN
# --------------------------------------------------
PS1='\[\e[38;2;240;167;184m\]\W\[\e[0m\] ❯ '

# --------------------------------------------------
# ALIAS MÍNIMOS
# --------------------------------------------------
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias v='nvim'
alias ff='fastfetch'
alias cls='clear'
alias reload='source ~/.bashrc'
