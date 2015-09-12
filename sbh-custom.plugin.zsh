[[ -z $CONFIG_PATH ]] && CONFIG_PATH=$(dirname $0)
dir=$CONFIG_PATH
config=(os-check aliases docker go less llvm ls)
((OSX)) && config=($config homebrew java locale)
((LINUX)) && config=($config)
((MSYS)) && config=($config)
for c in $config; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh"
	[[ (OSX) && -f ${dir}/osx/${c}.zsh ]] && source "${dir}/osx/${c}.zsh"
	[[ (LINUX) && -f ${dir}/linux/${c}.zsh ]] && source "${dir}/linux/${c}.zsh"
	[[ (MSYS) && -f ${dir}/msys/${c}.zsh ]] && source "${dir}/msys/${c}.zsh"
done

