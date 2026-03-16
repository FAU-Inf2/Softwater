cmake -B build
cd build
make -j
cd ../../Tests
python test.py --embed "opt -load-pass-plugin=rpgmark/build/libRPGMark.so -O1 [file] -o [file] -S -rpg-message=\"Hi\"" -t 
