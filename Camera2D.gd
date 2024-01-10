extends Camera2D

signal zoomChanged(value)

func _process(_delta):
	if Input.is_action_pressed("ui_zoom3"):
		set_zoom(Vector2(2.75, 2.75))
		emit_signal("zoomChanged", 4.5)
	if Input.is_action_pressed("ui_zoom2"):
		set_zoom(Vector2(1, 1))
		emit_signal("zoomChanged", 2)
	if Input.is_action_pressed("ui_zoom1"):
		set_zoom(Vector2(0.6, 0.6))
		emit_signal("zoomChanged", 1.2)
