unamestr=`uname`
if [[ "$unamestr" == "Linux" ]]; then
	export LINUX=1
	export OSX=0
elif [[ "$unamestr" == "Darwin" ]]; then
	export LINUX=0
	export OSX=1
fi
