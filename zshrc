# Path to your oh-my-zsh installation.
export ZSH="/Users/zenor/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"


# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Export
export LANG=en_US.UTF-8
export NNTPSERVER="news.epita.fr"
export VISUAL=vim
export EDITOR="$VISUAL"
export CLICOLOR=1
export PATH="$PATH:/Users/zenor/Documents/flutter/bin"



# Alias
alias sl='ls'
alias vim='mvim -v'
alias gitcompare='git shortlog -s -n --all'
alias utils='cd ~/Documents/pickyourskills_backend/ && docker-compose run utils bash'
alias flask='cd ~/Documents/pickyourskills_backend/ && docker-compose run flask bash'
alias studies='cd ~/Documents/pickyourskills_backend/ && docker-compose run studies bash'
alias pys='cd ~/Documents/pickyourskills_backend/ && docker-compose up --build'
alias seed_pys='cd ~/Documents/pickyourskills_backend/ && ./scripts/python-manage.sh seed_db_random pickyourskills.com'
alias nasm='/usr/local/bin/nasm'
alias qemu='qemu-system-x86_64'
alias recreate_pys='cd ~/Documents/pickyourskills_backend/ && ./scripts/python-manage.sh recreate_db pickyourskills.com'
alias recreate='cd ~/Documents/pickyourskills_backend/ && ./scripts/python-manage.sh recreate_db'


# Functions
mkcdir ()
{
    mkdir -p "$@" && eval cd "\"\$$#\"";
}


git()
{
    if [[ $@ == "stauts" ]]; then
        command git status
    else
        command git "$@"
    fi
}


# TheFuck plugin
eval $(thefuck --alias)
