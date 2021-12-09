#!/bin/zsh
#!/bin/bash

# Displays installed pyenv python versions and asks users for a version number.
# The function then installs the vertual environment and installs requirements.

#TDO - extract versions into separate variables and enter version by number 1,2,..n

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
