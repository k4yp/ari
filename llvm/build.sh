llc $1.ll -o $1.s
clang $1.s -o $1
rm $1.s
./$1