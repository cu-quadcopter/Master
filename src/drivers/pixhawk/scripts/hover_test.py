#!/usr/bin/env python
import rospy

from geometry_msgs.msg import PoseStamped

from mavros_driver import mavros_driver

if __name__ == '__main__':
    rospy.init_node('hover_test', anonymous=True)
    mavros = mavros_driver()
    mavros.arm(True)
    mavros.set_mode('OFFBOARD')

    pose = PoseStamped()
    pose.pose.position.x = 0
    pose.pose.position.y = 0
    pose.pose.position.z = 2

    rate = rospy.Rate(20)

    pub = rospy.Publisher('mavros/setpoint_position/local', PoseStamped, queue_size=10)
    while not rospy.is_shutdown():
        pub.publish(pose)
        mavros.set_mode('OFFBOARD') #HEARTBEAT
        rate.sleep()