cd ~/app/tmp/algorithm-visualizer/build
make install DESTDIR=/home/runner
cd ~/app
g++ main.cpp -o a.out -O2 -std=c++11 -lcurl -B /home/runner/var/empty/local
ALGORITHM_VISUALIZER=1 ./a.out