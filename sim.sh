cd /home/davidkopala/src/Firmware/
make posix_sitl_default gazebo &

cd ~/Desktop/catkin_ws
source devel/setup.bash
# rosrun offboard_ex offboard_ex_node &

roslaunch mavros px4.launch fcu_url:="udp://:14540@127.0.0.1:14557"
