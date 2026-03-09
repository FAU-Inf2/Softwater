#include <cstdio>
#include <cstdlib>
#include <string>
#include <iostream>

std::string get_readfile_dir(const char* argv0) {
    std::string path(argv0);
    std::size_t slash_pos = path.find_last_of("/\\");

    //Getting path of IObenchmarks folder, not of executable
    if (slash_pos != std::string::npos) {
        path = path.substr(0, slash_pos);
    } else {
        return "./";
    }
    return path;
}

int main(int argc, char* argv[]) {

    std::string dir = get_readfile_dir(argv[0]);
    std::string filepath = dir + "/ioreaderfile.txt";
    FILE* file;
    for (int i = 0; i < 10; ++i) {  // repeat 5 times to get better average
        file = std::fopen(filepath.c_str(), "rb");
        if (!file) {
            std::cerr << "ioreaderfile.txt could not be opened in IObenchmarks folder" << std::endl;
            return 1;
        }

        const std::size_t BUFFER_SIZE = 50;
        char buffer[BUFFER_SIZE];

        while (std::fgets(buffer, BUFFER_SIZE, file) != NULL) {
            // no operation
        }

        std::fclose(file);
    }
    return 0;
}
