[[ -z $MY_CONF_PATH ]] && CONFIG_PATH="$(dirname $0)/config"
dir=$MY_CONF_PATH
source "$(dirname $0)/os-check.zsh"
[[ -z $config && -f "${dir}/config.zsh" ]] && source "${dir}/config.zsh"
for c in $my-conf; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh"
	[[ (OSX) && -f ${dir}/osx/${c}.zsh ]] && source "${dir}/osx/${c}.zsh"
	[[ (LINUX) && -f ${dir}/linux/${c}.zsh ]] && source "${dir}/linux/${c}.zsh"
	[[ (MSYS) && -f ${dir}/msys/${c}.zsh ]] && source "${dir}/msys/${c}.zsh"
done
