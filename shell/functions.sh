function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function j() {
	fname=$(declare -f -F _z)

	[ -n "$fname" ] || source "$DOTLY_PATH/modules/z/z.sh"

	_z "$1"
}

function recent_dirs() {
	# This script depends on pushd. It works better with autopush enabled in ZSH
	escaped_home=$(echo $HOME | sed 's/\//\\\//g')
	selected=$(dirs -p | sort -u | fzf)

	cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

function show_open_files() {
	selected=$(ps axc | awk 'NR > 1' | awk '{print substr($0,index($0, $5))}' | sort -u | fzf)
	if [ ! -z $1 ]; then
		lsof -r 2 -c "$selected"
	else
		lsof -c "$selected"
	fi
}
function i() {
	$(idea "$1" &> /dev/null &)
}
function ws() {
	$(webstorm "$1" &> /dev/null &)
}
function pc() {
	$(pycharm "$1" &> /dev/null &)
}
function c() {
	# $(code "$1" &> /dev/null &)
	$(cursor "$1" &> /dev/null &)
}