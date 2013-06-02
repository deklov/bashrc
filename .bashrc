if [[ $- != *i* ]] ; then
	# Non-interactive, do nothing
	return
fi

function source_if {
    file="$1";

    if [ -f "$file" ]; then
        source $file;
    fi
}

source_if "~/.bash_aliases"
source_if "~/.bash_variables"

keychain ~/.ssh/id_dsa 2>/dev/null
source ~/.keychain/localhost-sh
