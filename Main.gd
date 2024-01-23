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
	if (Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left")
	or Input.is_action_pressed("ui_down") or Input.is_action_pressed("ui_up")):
		emit_signal("LoseNoteFocus")

var v1 = ""
var v2 = ""

func newThread(newPath):
	v2 = v1
	v1 = newPath
	if (v1 != v2 and v1 != "" and v2 != ""):
		createThread(v1, v2)
		v1 = ""
		v2 = ""

func createThread(path1, path2):
	var newT = thread.new()
	newT.path1 = path1
	newT.path2 = path2
	add_child(newT)
	get_node(path1).threadArray.append(newT)
	get_node(path2).threadArray.append(newT)
