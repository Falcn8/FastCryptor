read -p "Enter which version to compile (v1/v2/v3/v4): " version
mkdir -p build/

if [ "$version" == "v1" ]; then
    echo "~~ FC1 Compiler ~~"
    if test -f "src/v1/encrypt.cpp" && test -f "src/v1/decrypt.cpp"; then
        g++ src/v1/encrypt.cpp -o build/FC1 -std=c++11
        g++ src/v1/decrypt.cpp -o build/FC1_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
elif [ "$version" == "v2" ]; then
    echo "~~ FC2 Compiler ~~"
    if test -f "src/v2/encrypt.cpp" && test -f "src/v2/decrypt.cpp"; then
        g++ src/v2/encrypt.cpp -o build/FC2 -std=c++11
        g++ src/v2/decrypt.cpp -o build/FC2_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
elif [ "$version" == "v3" ]; then
    echo "~~ FC3 Compiler ~~"
    if test -f "src/v3/encrypt.cpp" && test -f "src/v3/decrypt.cpp"; then
        g++ src/v3/encrypt.cpp -o build/FC3 -std=c++11
        g++ src/v3/decrypt.cpp -o build/FC3_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
elif [ "$version" == "v4" ]; then
    echo "~~ FC4 Compiler ~~"
    if test -f "src/v4/encrypt.cpp" && test -f "src/v4/decrypt.cpp"; then
        g++ src/v4/encrypt.cpp -o build/FC4 -std=c++11
        g++ src/v4/decrypt.cpp -o build/FC4_DECRYPTOR -std=c++11
        echo "Finished compiling!"
    else
        echo "Error: File not found! Please download the source code."
    fi
else
    echo "Error: Invalid version!"
fi
