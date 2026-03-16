#include <fstream>
#include <string>
#include <cstdlib>
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
    for (int i = 0; i < 20; ++i) {  // repeat 20 times to get better average
        std::ifstream file(filepath.c_str(), std::ios::binary);
        if (!file) {
            std::cerr << "ioreaderfile.txt could not be opened in IObenchmarks folder" << std::endl;
            return 1;
        }
		size_t read = 0;
        std::string line;
        while (std::getline(file, line)) {
            // no operation
			read += line.size();
        }
        file.close();
		std::cout << read << std::endl;
    }
    return 0;
}
