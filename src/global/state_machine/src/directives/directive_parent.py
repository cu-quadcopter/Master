import rospy

class DirectiveParent(object):
	def __init__(self, directive):
		self.directive = directive

	def run(self):
		pass

	def stop(self):
		pass