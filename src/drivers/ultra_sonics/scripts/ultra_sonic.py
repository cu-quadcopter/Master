#!/usr/bin/env python

import rospy
from ultra_sonics.msg import *

class UltraSonicSensor:
    def __init__(self, p, x, y):
        self.port = p
        self.x = x
        self.y = y
        
        self.pub = rospy.Publisher('lidar_data', ProximityReading, queue_size=10)
        rospy.init_node('ultra_sonic', anonymous=True)
        self.rate = rospy.Rate(5) # 10hz

    def scan(self):
        while not rospy.is_shutdown():
            data = ProximityReading(self.x, self.y, 1, 1);
            rospy.loginfo(data)
            self.pub.publish(data)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        sensor = UltraSonicSensor(1, 0, 0);
        sensor.scan()
    except rospy.ROSInterruptException:
        pass