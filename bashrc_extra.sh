## .bashrc extras

## options ##
shopt -s cdspell   # guesser/typo-corrector

## functions ##

# override cd with push and pop stack version
function cd() {
	if [ "$#" = "0" ]
	then
		pushd ${HOME} > /dev/null
	elif [ -f "${1}" ]
	then
		${EDITOR} ${1}
	else
		pushd "$1" > /dev/null
	fi
}

function bd(){
	if [ "$#" = "0" ]
	then
		popd > /dev/null
	else
		for i in $(seq ${1})
		do
			popd > /dev/null
		done
	fi
}

function cd_ls { cd $1; ls;}

## aliases ##
alias agi='sudo apt-get install -y'
alias c='cd_ls'

# git aliases
function_exists() {
	declare -f -F $1 > /dev/null
	return $?
}

for al in `__git_aliases`; do
	alias g$al="git $al"

	complete_func=_git_$(__git_aliased_command $al)
	function_exists $complete_fnc && __git_complete g$al $complete_func
done


## function key bindings ##
bind '"\e[23~":"cd ..\n"'
bind '"\e[24~":"bd\n"'
