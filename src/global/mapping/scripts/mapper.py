#!/usr/bin/env python

import rospy
from ultra_sonics.msg import *

class Mapper:
    def __init__(self):
        self.x = 0
        self.y = 0
        self.z = 0
        
        rospy.init_node('mapping')
        self.rate = rospy.Rate(10) # 10hz


if __name__ == '__main__':
    try:
        map = Mapper()
    except rospy.ROSInterruptException:
        pass