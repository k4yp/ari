mkdir -p bin
llc $1.ll -o ./bin/$1.s
clang ./bin/$1.s -o ./bin/$1
./bin/$1