dir=$(dirname $0)
((LINUX)) && [[ -f ${dir}/llvm-arch.zsh ]] && source "${dir}/llvm-arch.zsh"
((OSX)) && [[ -f ${dir}/llvm-osx.zsh ]] && source "${dir}/llvm-osx.zsh"
