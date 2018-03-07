import rospy
from directive_parent import DirectiveParent

class HoverDirective(DirectiveParent):
	def __init__(self, directive):
		self.directive = directive

	def run(self):
		# send stand still to pixhawk
		# rospy.loginfo("Hovering")
		pass
		