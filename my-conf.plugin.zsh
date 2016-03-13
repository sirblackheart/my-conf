[[ -z $MY_CONF_PATH ]] && MY_CONF_PATH="$HOME/.config/my-conf"
dir=$MY_CONF_PATH
source "$(dirname $0)/os-check.zsh"
[[ -z $config && -f "${dir}/config.zsh" ]] && set -A myconf && source "${dir}/config.zsh"
for c in $myconf; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh";
	[[ -f ${dir}/$OS_NAME/${c}.zsh ]] && source "${dir}/$OS_NAME/${c}.zsh";
done
load() {
	if [ "$#" -ne 1 ] && [ "$#" -ne 2 ]; then
		echo "my-conf: name [os] and script to load"
	fi
    if [ "$#" -eq 1 ]; then
		[[ -f ${dir}/$1.zsh ]] && source "${dir}/$1.zsh";
		[[ -f ${dir}/$OS_NAME/$1.zsh ]] && source "${dir}/$OS_NAME/$1.zsh";
    fi
    if [ "$#" -eq 2 ]; then
		[[ -f ${dir}/$1/$2.zsh ]] && source "${dir}/$1/$2.zsh";
    fi
}
