[[ -z $MY_CONF_PATH ]] && MY_CONF_PATH="$HOME/.config/my-conf"
dir=$MY_CONF_PATH
source "$(dirname $0)/os-check.zsh"
[[ -z $config && -f "${dir}/config.zsh" ]] && set -A myconf && source "${dir}/config.zsh"
for c in $myconf; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh";
	[[ -f ${dir}/$OS_NAME/${c}.zsh ]] && source "${dir}/$OS_NAME/${c}.zsh";
done
