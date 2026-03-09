#include <fstream>
#include <cstdlib>
#include <ctime>
#include <vector>
#include <algorithm>
#include <iostream>

static const unsigned int SEED = 268732494;

std::string get_executable_dir(const char* argv0) {
    std::string path(argv0);
    std::size_t slash_pos = path.find_last_of("/\\");
    if (slash_pos != std::string::npos) {
        return path.substr(0, slash_pos + 1); // inkl. slash
    } else {
        return "./";
    }
}

int main(int argc , char* argv[]) {
    std::srand(SEED);
    const std::size_t TARGET_BYTES = 100 * 1024 * 1024; // ~100 MB
    const std::size_t BUFFER_SIZE = 1 << 20;           // 1 MB

    std::string dir = get_executable_dir(argv[0]);
    std::string filepath = dir + "iowriterfile.txt";
    std::ofstream out(filepath.c_str(), std::ios::binary | std::ios::trunc);
    if (!out){
        std::cerr << "iowriterfile.txt could not be created in build folder" << std::endl;
        return 1;
    }

    std::vector<char> buffer(BUFFER_SIZE);
    std::size_t written = 0;
    while (written < TARGET_BYTES) {
        std::size_t toWrite = std::min(BUFFER_SIZE, TARGET_BYTES - written);
        for (std::size_t i = 0; i < toWrite; ++i) {
            buffer[i] = static_cast<char>(std::rand() % 256);
        }
        out.write(buffer.data(), toWrite);
        written += toWrite;
    }
    out.close();
    return 0;
}