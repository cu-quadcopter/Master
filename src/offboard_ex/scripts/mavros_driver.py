#!/usr/bin/env python
import rospy

from geometry_msgs.msg import PoseStamped
from mavros_msgs.msg import State
from mavros_msgs.srv import SetMode, SetModeRequest, CommandBool, CommandBoolRequest


class mavros_driver():
	def __init__(self):
		self.rate = rospy.Rate(20)
		self.current_state = State()
		
		rospy.Subscriber('/mavros/state', State, self.state_cb)
		while not rospy.is_shutdown() and not self.current_state.connected:
			self.rate.sleep()
		rospy.loginfo('Connection Successful')
		
		self.local_pose = PoseStamped()
		rospy.Subscriber('/mavros/local_position/pose', PoseStamped, self.pose_cb)
	
	
	def state_cb(self, data):
		self.current_state = data
	
	def pose_cb(self, data):
		self.local_pose = data
	
	
	def set_mode(self, mode):
		if not self.current_state.connected:
			rospy.loginfo('Not Connected')
		elif self.current_state.mode != mode:
			rospy.wait_for_service('/mavros/set_mode')
			set_mode_client = rospy.ServiceProxy('/mavros/set_mode', SetMode)
			
			req = SetModeRequest()
			req.custom_mode = mode

			pub = rospy.Publisher('mavros/setpoint_position/local', PoseStamped, queue_size=10)
			pose = PoseStamped()
			pose.pose.position.x = 0
			pose.pose.position.y = 0
			pose.pose.position.z = 0
			
			t0 = rospy.get_rostime() + rospy.Duration(3.0)
			while not rospy.is_shutdown() and (self.current_state.mode != mode):
				if rospy.get_rostime() - t0 > rospy.Duration(2.0):
					try:
						rospy.loginfo('Sending')
						set_mode_client.call(req)
					except rospy.ServiceException, e:
						rospy.loginfo('Service did not process request: %s'%str(e))
					t0 = rospy.get_rostime()
				pub.publish(pose)
				self.rate.sleep()
			rospy.loginfo(self.current_state.mode + ' Mode Esablished')
		
	def arm(self, val):
		if self.current_state.armed:
			rospy.loginfo('Already Armed!')
		else:
			rospy.wait_for_service('/mavros/cmd/arming')
			arm_client = rospy.ServiceProxy('/mavros/cmd/arming', CommandBool)
			
			req = CommandBoolRequest()
			req.value = val
			
			t0 = rospy.get_rostime()
			while not rospy.is_shutdown() and (self.current_state.armed != val):
				if (rospy.get_rostime() - t0) > rospy.Duration(2.0):
					try:
						arm_client.call(req)
					except rospy.ServiceException, e:
						rospy.loginfo('Service did not process request: %s'%str(e))
					t0 = rospy.get_rostime()
			rospy.loginfo('Armed: ' + str(val))



if __name__ == '__main__':
	print 'Starting!'
	rospy.init_node('mavros_test_node', anonymous=True)
	test = mavros_driver()
	test.arm(True)
	test.set_mode('OFFBOARD')
	tRate = rospy.Rate(20)
	while not rospy.is_shutdown():
		test.set_mode('OFFBOARD')
		tRate.sleep()
