[[ -z $MY_CONF_PATH ]] && MY_CONF_PATH="$(dirname $0)/config"
dir=$MY_CONF_PATH
source "$(dirname $0)/os-check.zsh"
[[ -z $config && -f "${dir}/config.zsh" ]] && set -A myconf && source "${dir}/config.zsh"
for c in $myconf; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh";
	((OSX)) && [[ -f ${dir}/osx/${c}.zsh ]] && source "${dir}/osx/${c}.zsh";
	((LINUX)) &&[[ -f ${dir}/linux/${c}.zsh ]] && source "${dir}/linux/${c}.zsh";
	((MSYS)) && [[ -f ${dir}/msys/${c}.zsh ]] && source "${dir}/msys/${c}.zsh";
done
