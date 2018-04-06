cd ..

echo "Removing Files"
rm -rf build
rm -rf devel

echo "Download Dependencies"
sudo apt-get install python-wstool python-rosinstall-generator python-catkin-tools
wstool update -t src

echo "Building"
catkin build
source devel/setup.bash
