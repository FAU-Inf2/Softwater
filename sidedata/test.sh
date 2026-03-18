# execute in Tests directory
python test.py --embed "opt -load-pass-plugin=./build/sidedata/libSideData.so -O1 [file] -o [file] -S -sidedata-key=12345 -sidedata-val=water" -t 
