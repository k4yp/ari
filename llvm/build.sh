llc -O3 -filetype=obj -relocation-model=pic $1.ll -o $1.o
clang $1.o -o $1
./$1