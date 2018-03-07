#!/usr/bin/env python

from enum import Enum
import rospy
from std_msgs.msg import Int8
from ultra_sonics.msg import *

from directives import *

class Directives(Enum):
    Hover = 0
    UltraSonicScan = 1


class StateMachine:
    def __init__(self):
        rospy.init_node('state_machine')
        self.rate = rospy.Rate(10) # 10hz

        self.activeDirective = HoverDirective(Directives.Hover)

        rospy.Subscriber('directive_force_switch', Int8, self.forceSwitchDirective)

    def run(self):
        while not rospy.is_shutdown():
            self.activeDirective.run()
            self.rate.sleep()

    def forceSwitchDirective(self, data):
        directive = Directives(data.data)
        
        if directive == Directives.Hover:
            rospy.loginfo("Force Switching to hover")
        if directive == Directives.UltraSonicScan:
            rospy.loginfo("Force Switching to ultra sonic scan")



if __name__ == '__main__':
    try:
        machine = StateMachine()
        machine.run()
    except rospy.ROSInterruptException:
        pass