cd ..

echo "Removing Files"
rm -rf build
rm -rf devel

echo "Download Dependencies"
wstool update -t src
sudo apt-get install python-wstool python-rosinstall-generator python-catkin-tools

echo "Building"
catkin build
source devel/setup.bash
