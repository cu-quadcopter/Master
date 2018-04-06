#!/usr/bin/env python

if False:
    import RPi.GPIO as GPIO

import time
import rospy
from ultra_sonics.msg import *

class UltraSonicSensor:
    def __init__(self, tp, ep, x, y):
        self.trigger_port = tp
        self.echo_port = ep
        self.x = x
        self.y = y
        
        self.pub = rospy.Publisher('proximity_readings', ProximityReading, queue_size=10)
        rospy.init_node('ultra_sonic', anonymous=True)
        self.rate = rospy.Rate(2) # hz

    def startScanning(self):
        while not rospy.is_shutdown():
            distance = self._pullDistance()
            data = ProximityReading(self.x, self.y, distance, 1);
            rospy.loginfo(data)
            self.pub.publish(data)

            sensor.rate.sleep()


    def _pullDistance(self):
        try:
            GPIO.output(self.trigger_port, True)
            time.sleep(0.00001)
            GPIO.output(self.trigger_port, False)
            while GPIO.output(self.echo_port) ==0:
                pulse_start1 = time.time()
            while GPIO.input(self.echo_port) ==1:
                pulse_end1 = time.time()
            ti =  pulse_start1 - pulse_end1
            dis = ti * 17150
            dis = round(dis,2)
            return dis
        except:
            return 1

if __name__ == '__main__':
    try:
        sensor = UltraSonicSensor(1, 2, 0, 0);
        sensor.startScanning()
    except rospy.ROSInterruptException:
        pass