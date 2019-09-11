
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"export PATH="/usr/local/sbin:$PATH"


alias c=clear
alias gb="gulp build"
alias gw="gulp watch"
alias gg="gb && gw"


alias ll='gls -Flh --group-directories-first'

# Custom bash prompt
export PS1="\[$(tput setaf 5)\]\u \[$(tput setaf 7)\]@ \[$(tput setaf 6)\]\w\n\[$(tput setaf 7)\]==> \[$(tput sgr0)\]"

export CLICOLOR=1

alias ls='ls -GFh'



source $HOME/ccd.sh



# bash completion for the `wp` command

_wp_complete() {
    local OLD_IFS="$IFS"
    local cur=${COMP_WORDS[COMP_CWORD]}

    IFS=$'\n';  # want to preserve spaces at the end
    local opts="$(wp cli completions --line="$COMP_LINE" --point="$COMP_POINT")"

    if [[ "$opts" =~ \<file\>\s* ]]
    then
        COMPREPLY=( $(compgen -f -- $cur) )
    elif [[ $opts = "" ]]
    then
        COMPREPLY=( $(compgen -f -- $cur) )
    else
        COMPREPLY=( ${opts[*]} )
    fi

    IFS="$OLD_IFS"
    return 0
}
complete -o nospace -F _wp_complete wp
