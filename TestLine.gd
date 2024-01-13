extends Line2D

func _ready():
	add_point(Vector2(0, 0))
	add_point(Vector2(0, 0))

func _process(_delta):
	set_point_position(1, get_node("../../Note2").position - global_position)
