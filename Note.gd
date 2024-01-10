extends KinematicBody2D

func _on_Panel_gui_input(event):
	if event is InputEventScreenDrag:
		position += event.relative
	if event is InputEventMouseButton:
		draw_line(position, Vector2(0, 0), Color.chartreuse)
