if [[ $- != *i* ]] ; then
	# Non-interactive shell, do nothing
	return
fi

function source_if {
    file="$1";
    if [ -f "$file" ]; then
        source $file;
    fi
}

source_if "$HOME/.bash_aliases"
source_if "$HOME/.bash_variables"

# Setup keychain, if the keychain executable is in $PATH
if [ "x$(which keychain 2>/dev/null)" != "x" ]; then
    keychain ~/.ssh/id_dsa 2>/dev/null
    source ~/.keychain/localhost-sh
fi


