#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bashrc/ ]; then
    . /etc/bashrc
fi

### Variables

# Colors
C0='\e[0m'
C1='\e[30m'
C2='\e[31m'
C3='\e[32m'
C4='\e[33m'
C5='\e[34m'
C6='\e[35m'
C7='\e[36m'
C8='\e[37m'
BC1='\e[1;30m'
BC2='\e[1;31m'
BC3='\e[1;32m'
BC4='\e[1;33m'
BC5='\e[1;34m'
BC6='\e[1;35m'
BC7='\e[1;36m'
BC8='\e[1;37m'

### Bash Command History Settings
HISTSIZE=1024
HISTFILESIZE=2048

### Functions

# scram - clears bash history and exits
# Usage: scram
scram (){
        history -c
        exit
}

# mkcd - makes a directory then moves into it
# Usage: mkcd <directory name>
mkcd (){
        mkdir -p -- "$1"
        cd -P -- "$1"
}

### Aliases
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
alias nv='nvim -u ~/.config/nvim/init.vim'

echo -e "<< $SHELL version $BASH_VERSION | $(date "+%T") | $USER@$HOSTNAME >>"
PS1="[ ${BC2}\W${C0} ]: "


