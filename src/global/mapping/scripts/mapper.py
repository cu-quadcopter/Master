#!/usr/bin/env python

import rospy
from ultra_sonics.msg import *

class Mapper:
    def __init__(self):
        self.x = 0
        self.y = 0
        self.z = 0
        self.proximity_readings = []

        rospy.init_node('mapping')
        self.rate = rospy.Rate(10) # 10hz

        rospy.Subscriber('proximity_readings', ProximityReading, self.proximityReadingReceived)

        rospy.spin()

    def proximityReadingReceived(self, data):
        self.proximity_readings = [r for r in self.proximity_readings if r.x_rotation != data.x_rotation and r.y_rotation != data.x_rotation]
        self.proximity_readings.append(data);
        
        rospy.loginfo(rospy.get_caller_id() + ' Reading Maintained %s', len(self.proximity_readings))

if __name__ == '__main__':
    try:
        map = Mapper()
    except rospy.ROSInterruptException:
        pass