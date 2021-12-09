#!/bin/zsh
# installs python and requirements  in a virtual environment

#TDO - extract versions into seperte variables and enter version by number 1,2,..n

function setup_python {
  
pyenv versions

echo "Enter python version from list: "
read userinput
vers=$(pyenv versions)

if [[ $vers =~ $userinput ]]
then
        pyenv local $userinput &&
        python3 -m venv .venv &&
        source .venv/bin/activate &&
        pip install --upgrade pip &&
        pip install -r requiements.txt
else
        echo $userinput is not in list
fi
}
