echo "~~ FC1 Compiler ~~"
if test -f "src/encrypt.cpp" && test -f "src/decrypt.cpp"; then
    echo $(sed -n "8p" < src/encrypt.cpp) | cut -d'"' -f 2 > build/KEY
    g++ src/encrypt.cpp -o build/FC1
    g++ src/decrypt.cpp -o build/FC1_DECRYPTOR
    echo "Successfully compiled!"
else
    echo "Error: File not found! Please download the source code."
fi
