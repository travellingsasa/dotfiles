#if [[ ":$PATH:" != *":/Library/Frameworks/Python.framework/Versions/3.9/bin:"* ]]; then
#  export  PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH} &&
# echo "python3.9 added to PATH"
#fi


# Add  $HOME/.local/bin to path if not in path
# Needed to install jupyterlab properly
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
   export PATH="$HOME/.local/bin:${PATH}" &&
   echo ".local/bin added to PATH for Jupyter"
fi

if  [[ ":$PATH:" != *":$HOME/.pyenvl/bin:"* ]]; then
   export PATH=$HOME/.pyenv/bin:$PATH &&
   echo ".pyenv added to PATH"
fi

PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

export PATH=$HOME/.pyenv/bin:$PATH
