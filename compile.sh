read -p "Enter which version to compile (v1/v2): " version
mkdir -p build/
if [ $version == "v1" ]; then
    echo "~~ FC1 Compiler ~~"
    if test -f "src/v1/encrypt.cpp" && test -f "src/v1/decrypt.cpp"; then
        g++ src/v1/encrypt.cpp -o build/FC1 -std=c++11
        g++ src/v1/decrypt.cpp -o build/FC1_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
elif [ $version == "v2" ]; then
    echo "~~ FC2 Compiler ~~"
    if test -f "src/v2/encrypt.cpp" && test -f "src/v2/decrypt.cpp"; then
        g++ src/v2/encrypt.cpp -o build/FC2 -std=c++11
        g++ src/v2/decrypt.cpp -o build/FC2_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
else
    echo "Error: Invalid version!"
fi
