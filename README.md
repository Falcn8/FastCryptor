<p align="center">
    <img src="FastCryptor.jpg" alt="FastCryptor">
    </p>
    <p align="center">
        <em>Fast XOR File Encryption/Decryption</em>
</p>
<p align="center">
    <a href="https://cplusplus.com/" target="_blank">
        <img src="https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white" alt="C++">
    </a>
    <a href="https://www.linux.org/" target="_blank">
        <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux">
    </a>
    <a href="https://www.microsoft.com/en-us/windows" target="_blank">
        <img src="https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" alt="Windows">
    </a>
    <a href="https://www.apple.com/macos/ventura/" target="_blank">
        <img src="https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white" alt="macOS">
    </a>
    <a href="https://snyk.io/" target="_blank">
        <img src="https://img.shields.io/badge/Snyk-4C4A73?style=for-the-badge&logo=snyk&logoColor=white" alt="Release">
    </a>
    <a href="https://github.com/Falcn8/FastCryptor/LICENSE" target="_blank">
        <img src="https://img.shields.io/github/license/Falcn8/FastCryptor?style=for-the-badge" alt="License">
    </a>
</p>

This project contains a pair of **C++** programs for encrypting and decrypting files using the **XOR cipher**. The programs are designed to be fast and efficient, and can encrypt/decrypt entire directories, **including subdirectories**. The programs are written in C++ and are **cross-platform**. The programs are designed to be used in the terminal. I also added a `compile.sh` file to compile the programs.

---

## Features

- Encrypts files using a key.
- Decrypts files encrypted using the encryption program.
- Can encrypt/decrypt entire directories, including subdirectories.

---

## Usage

### Clone

Clone the repository using the following command:

```bash
git clone https://github.com/Falcn8/FastCryptor.git
cd FastCryptor
```

### Compile

To compile the programs, run the `compile.sh` file. This will compile the programs and place the executables in the `build/` directory.

### Encryption

To encrypt a directory, run the encryption program in the directory you want to encrypt.

### Decryption

To decrypt a directory, run the decryption program in the directory you want to decrypt.

---

## Note

- Make sure to keep the key used for encryption safe, as it is required for decryption.
- Use this program at your own risk. The author takes no responsibility for any data loss or corruption that may occur.
