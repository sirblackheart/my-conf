dir=$(dirname $0)
config=(os-check aliases docker go less ls)
((OSX)) && config=($config homebrew java-osx llvm-osx locale)
((OSX)) && config=($config llvm-linux)
for c in $config; do
	[[ -f ${dir}/${c}.zsh ]] && source "${dir}/${c}.zsh";
done

