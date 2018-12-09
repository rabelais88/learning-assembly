echo "building NASM 64bit source from MacOS 2018"
if [ $# -eq 0 ] || [ -z "$1" ]; then
    echo "need file name as argument"
fi
# build object file from source
nasm -f macho64 $1.s
# link object file to executable file
# ld -o <output>
ld -macosx_version_min 10.7.0 -lSystem -o $1 $1.o
echo "build finished"
