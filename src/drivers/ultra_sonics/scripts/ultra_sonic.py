#!/usr/bin/env python

import rospy
from ultra_sonics.msg import *

class UltraSonicSensor:
    def __init__(self, p, x, y):
        self.port = p
        self.x = x
        self.y = y
        
        self.pub = rospy.Publisher('proximity_readings', ProximityReading, queue_size=10)
        rospy.init_node('ultra_sonic', anonymous=True)
        self.rate = rospy.Rate(5) # 10hz

    def scan(self):
        x = 0
        while not rospy.is_shutdown():
            if x > 10:
                data = ProximityReading(self.x, self.y, 1, 1);
                rospy.loginfo(data)
                self.pub.publish(data)
                x = 0

            x += 1
            self.rate.sleep()

if __name__ == '__main__':
    try:
        sensor = UltraSonicSensor(1, 0, 0);
        sensor.scan()
    except rospy.ROSInterruptException:
        pass