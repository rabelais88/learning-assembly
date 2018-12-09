echo "building GAS source from MacOS 2018"
if [ $# -eq 0 ] || [ -z "$1" ]; then
    echo "need file name as argument"
fi
# build object file from source
clang -c -o $1.o $1.s -arch i386
# link object file to executable file
# ld -o <output>
ld -macosx_version_min 10.7.0 -arch i386 -o $1 $1.o
echo "build finished"