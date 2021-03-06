extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Quit_pressed():
	get_tree().quit()

func _on_Reload_pressed():
	get_tree().reload_current_scene()
	if visible:
		hide()
		get_tree().paused = false
