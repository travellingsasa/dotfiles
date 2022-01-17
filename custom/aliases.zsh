 ds=~/documents/ds
# cd $ds

#Aliases

#!/bin/zsh
# installs python and requirements  in a virtual environment
function setup_python {

pyenv versions
v=$(pyenv versions)

echo "Enter python version from list: "
read x

if [[ $v =~ $x ]]
then
        pyenv local $x &&
        python3 -m venv .venv &&
        source .venv/bin/activate &&
        pip install --upgrade pip &&
        pip install -r requirements.txt
else
        echo $x is not in list
fi
}

  #alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'


# https://gpanders.com/blog/managing-dotfiles-with-git/
#
alias dot='/usr/bin/git --git-dir=/Users/redzesas/.dotfiles/ --work-tree=/Users/redzesas'
dot config --local status.showUntrackedFiles no

#git() {
#        if [ "$PWD" = "$HOME" ]; then
#                command git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
#        else
#                command git "$@"
#        fi
#}

alias activate='source .venv/bin/activate'
