((MSYS)) && alias sudo=""

if (( $+commands[nvim] )) ; then
	alias vim="nvim"
fi

if (( $+commands[mplayer] )) ; then
	alias fm4="mplayer -cache 8192 -cache-min 20 http://194.232.200.150:8000"
	alias fm4.2="mplayer -cache 8192 -cache-min 20 http://198.50.155.189:8009"
fi

((LINUX || OSX)) && alias suvim="sudo -E vim"
((LINUX || OSX)) && alias root="su -m root"

((LINUX)) && alias open="xdg-open"
((MSYS)) && alias open="start"
((LINUX || MSYS)) && alias upgrade="sudo pacman -Syu"
((OSX)) && alias upgrade="brew update && brew upgrade --all"

config() {
	if [[ $* == "zsh" ]]; then FILE=~/.zshrc && vim $FILE;
	if [[ $* == "vim" ]]; then FILE=~/.vimrc && vim $FILE;
	else echo "not configurable"; fi
}