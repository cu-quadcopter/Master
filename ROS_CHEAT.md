# ROS Cheat Sheet

## Navigation
- `roscd <package>`

## Build / Run
- `catkin_make && . devil/setup.bash`
- `rosrun <package> <script>`


## Run Time
- `rostopic pub directive_force_switch std_gs/Int8 '0'`

## Display Pixhawk state and IMU data
- `rostopic echo mavros/state`
- `rostopic echo /mavros/imu/data_raw`
