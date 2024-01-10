extends Panel

func _ready():
	set_focus_mode(1)

func _on_Background_gui_input(event):
	if event is InputEventMouseButton:
		grab_focus()

func _on_Main_LoseNoteFocus():
	grab_focus()
