dir=$(dirname $0)
config=(os-check aliases docker go less llvm ls)
((OSX)) && config=($config homebrew java-osx locale)
for c in $config; do
	echo ${dir}/${c}.zsh
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh";
done

