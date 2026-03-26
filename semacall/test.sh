# execute in Tests directory
python test.py --embed "opt -load-pass-plugin=./build/semacall/libSemaCall.so -O1 [file] -o [file] -S -atoi-key=12345 -atoi-val=water -gets-key=12345 -gets-val=water -time-key=12345 -time-val=water" -t 
