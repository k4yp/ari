mkdir -p bin
ghc Main.hs -o bin/main -no-keep-hi-files -no-keep-o-files
./bin/main