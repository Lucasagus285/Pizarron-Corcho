class_name thread

extends Line2D

var path1
var path2

func _ready():
	set_default_color(Color(0.85, 0, 0))
	add_point(Vector2(0, 0))
	add_point(Vector2(0, 0))

func _process(_delta):
	set_point_position(0, get_node(path1).position - global_position)
	set_point_position(1, get_node(path2).position - global_position)
