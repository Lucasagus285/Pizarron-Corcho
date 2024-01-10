extends KinematicBody2D

var velocity = Vector2(0,0);
var zoomValue = 1

func _physics_process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 250*zoomValue
	if Input.is_action_pressed("ui_left"):
		velocity.x = -250 * zoomValue
	if Input.is_action_pressed("ui_down"):
		velocity.y = 250 * zoomValue
	if Input.is_action_pressed("ui_up"):
		velocity.y = -250 * zoomValue
	
# warning-ignore:return_value_discarded
	move_and_slide(velocity)
	
	velocity.x = lerp(velocity.x, 0, 0.25)
	velocity.y = lerp(velocity.y, 0, 0.25)

func _on_Camera2D_zoomChanged(value):
	zoomValue = value
