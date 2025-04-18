##############################################################################
# Python specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

#======
# venv
#======
alias vc="python -m venv"
alias vd="deactivate"

# Activate the virtual environment
va() {
    local venv_path="${1:-$(pwd)/.venv}"
    local activate_script="$venv_path/bin/activate"

    if [ -f "$activate_script" ]; then
        echo "Activating virtual environment at $venv_path"
        source "$activate_script"
    else
        echo "No virtual environment found at $venv_path. Ensure the path is correct."
    fi
}
