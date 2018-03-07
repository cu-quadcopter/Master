import rospy
from directive_parent import DirectiveParent

class UltraSonicScanDirective(DirectiveParent):
	def __init__(self, directive):
		self.directive = directive

	def run(self):
		rospy.loginfo("Scanning")
		pass