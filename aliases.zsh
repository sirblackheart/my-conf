if (( $+commands[nvim] )) ; then
	alias vim="nvim"
fi

alias root="su -m root"

if (( $+commands[mplayer] )) ; then
	alias fm4="mplayer -cache 8192 -cache-min 20 http://194.232.200.150:8000"
	alias fm4.2="mplayer -cache 8192 -cache-min 20 http://198.50.155.189:8009"
fi

alias suvim="sudo -E vim"
alias root="su -m root"

((LINUX)) && alias open="xdg-open"
((LINUX)) && alias upgrade="sudo pacman -Syu"
((OSX)) && alias upgrade="brew update && brew upgrade --all"

config() {
	if [[ $* == "zsh" ]]; then FILE=~/.zshrc && vim $FILE;
	else echo "not configurable"; fi
}
