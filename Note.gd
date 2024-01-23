extends KinematicBody2D

var threadArray = []

func _on_Panel_gui_input(event):
	if event is InputEventScreenDrag:
		position += event.relative
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_RIGHT:
				if threadArray.size() != 0:
					for i in threadArray:
						if is_instance_valid(i):
							i.queue_free()
				queue_free()
			BUTTON_MIDDLE:
				get_tree().call_group("notesGroup", "newThread", get_path())
