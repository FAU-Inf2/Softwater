#include <cstdio>
#include <fstream>
#include <string>
#include <cstring>
#include <cstdlib>
#include <iostream>

std::string get_executable_dir(const char* argv0) {
    std::string path(argv0);
    std::size_t slash_pos = path.find_last_of("/\\");
    if (slash_pos != std::string::npos) {
        return path.substr(0, slash_pos + 1); // inkl. slash
    } else {
        return "./";
    }
}

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
    std::string readdir = get_readfile_dir(argv[0]);
    std::string readfilepath = readdir + "/ioreaderfile.txt";
    FILE* read_file = std::fopen(readfilepath.c_str(), "rb");
    if (!read_file) {
        std::cerr << "ioreaderfile.txt could not be opened in folder " << readdir << std::endl;
        return 1;
    }

    std::string writedir = get_executable_dir(argv[0]);
    std::string writefilepath = writedir + "iowriterfile.txt";
    std::ofstream write_file(writefilepath.c_str(), std::ios::binary | std::ios::trunc);
    if (!write_file) {
        std::fclose(read_file);
        std::cerr << "iowriterfile.txt could not be created in build folder" << std::endl;
        return 1;
    }

    const std::size_t BUFFER_SIZE = 30;
    char c_buffer[BUFFER_SIZE];
    std::string cpp_line;

    bool use_fgets = true;
    while (true) {
        if (use_fgets) {
            if (std::fgets(c_buffer, BUFFER_SIZE, read_file) == NULL) {
                break;
            }
            // Nach dem fgets-Lesen eine Kleinigkeit schreiben
            write_file.write(c_buffer, std::strlen(c_buffer));
        } else {
            std::streampos pos = std::ftell(read_file);
            std::ifstream temp_stream(readfilepath.c_str(), std::ios::binary);
            temp_stream.seekg(pos);
            if (!std::getline(temp_stream, cpp_line)) {
                break;
            }
            // Update aktuelle Position im FILE*
            std::fseek(read_file, static_cast<long>(temp_stream.tellg()), SEEK_SET);
            write_file << cpp_line << "\n";
        }
        use_fgets = !use_fgets; // Switch between fgets and getline
    }

    std::fclose(read_file);
    write_file.close();
    return 0;
}
