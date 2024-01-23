extends Node

func _ready():
	pass

func newThread(newPath):
	print(get_node(newPath).tester)
#	v2 = v1
#	v1 = newPath
#	if (v1 != v2 and v1 != "" and v2 != ""):
#		createThread(v1, v2)
#		v1 = ""
#		v2 = ""
