mkdir -p ~/tmp
cd ~/app/tmp/algorithm-visualizer/build
make install DESTDIR=/home/runner
cd ~/app/build
make && ./server