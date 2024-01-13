extends KinematicBody2D

var threadActive = 0

func _on_Panel_gui_input(event):
	if event is InputEventScreenDrag:
		position += event.relative
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_RIGHT:
				queue_free()
			BUTTON_MIDDLE:
				newThread()

func newThread():
	var thread = Line2D.new()
	if threadActive == 0:
		thread.add_point(position)
		thread.width = 15
		thread.add_point(Vector2(25, 25))
		thread.name = "thread"
		get_parent().add_child(thread)
		 #get_tree().call_group("notesGroup", "set_threadActive_to_1")
	elif threadActive == 1:
		thread.add_point(Vector2(0, 0))
		 #get_tree().call_group("notesGroup", "set_threadActive_to_0")
	elif threadActive == 2:
		queue_free()
	else:
		threadActive = 0

func set_threadActive_to_1():
	threadActive = 1

func set_threadActive_to_0():
	threadActive = 0
