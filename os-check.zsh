unamestr=`uname`
export LINUX=0
export OSX=0
export MSYS=0
if [[ "$unamestr" == "Linux" ]]; then
	export LINUX=1
	export OS_NAME="linux"
elif [[ "$unamestr" == "Darwin" ]]; then
	export OSX=1
	export OS_NAME="osx"
elif [[ "$unamestr" == "MSYS"* ]]; then
	export MSYS=1
	export OS_NAME="msys"
fi
