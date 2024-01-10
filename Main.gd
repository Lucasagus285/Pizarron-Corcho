extends Node

export(PackedScene) var Note_scene

export var CameraPath : NodePath
onready var Camera_scene = get_node_or_null(CameraPath)

signal LoseNoteFocus()

func _on_NewNote_pressed():
	var note = Note_scene.instance()
	note.position.x = Camera_scene.position.x
	note.position.y = Camera_scene.position.y - 110
	add_child(note)

func _process(_delta):
	if (Input.is_action_pressed("ui_right")
	or Input.is_action_pressed("ui_left")
	or Input.is_action_pressed("ui_down")
	or Input.is_action_pressed("ui_up")):
		emit_signal("LoseNoteFocus")
