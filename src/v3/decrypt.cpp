#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <dirent.h>
#include <cstring>
#include <cstdio>

const std::string key = "fastcryptor_for_the_win_haha";

void decryptFile(const std::string& fileName)
{
    std::ifstream inputFile(fileName, std::ios::binary);
    if (!inputFile.is_open()) {
        std::cerr << "Error opening file: " << fileName << std::endl;
        return;
    }

    if (fileName.length() < 3 || fileName.substr(fileName.length() - 3) != ".fc") {
        return;
    }

    std::vector<char> data((std::istreambuf_iterator<char>(inputFile)), 
                           (std::istreambuf_iterator<char>()));
    inputFile.close();

    int totalSize = data.size();
    int processed = 0;

    for (int i = 0; i < totalSize; i++) {
        data[i] ^= key[i % key.length()];

        processed++;
        int percentage = (processed * 100) / totalSize;

        std::cout << "\rDecrypting " << fileName << " - " << percentage << "% complete";
        std::cout.flush();
    }
    std::cout << std::endl;

    std::string decryptedFileName = fileName;
    decryptedFileName.erase(decryptedFileName.length() - 3, 3);

    std::ofstream outputFile(decryptedFileName, std::ios::binary);
    if (!outputFile.is_open()) {
        std::cerr << "Error opening file: " << decryptedFileName << std::endl;
        return;
    }

    outputFile.write(data.data(), data.size());
    outputFile.close();

    if (std::remove(fileName.c_str()) != 0) {
        std::cerr << "Error deleting file: " << fileName << std::endl;
    }
}

void decryptDirectory(const std::string& dirName)
{
    DIR *dir;
    struct dirent *ent;
    if ((dir = opendir(dirName.c_str())) != NULL) {
        while ((ent = readdir(dir)) != NULL) {
            std::string fileName = dirName + "/" + ent->d_name;
            if (ent->d_type == DT_REG && fileName.length() > 3 && fileName.substr(fileName.length() - 3) == ".fc") {
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
