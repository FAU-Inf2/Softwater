# execute in Tests directory
python test.py --embed "opt -load-pass-plugin=./build/rpgmark/libRPGMark.so -O1 [file] -o [file] -S -rpg-message=\"Hi\"" -t 
