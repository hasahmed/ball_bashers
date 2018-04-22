extends Button

export(String, FILE) var level

func _on_button_up():
	get_tree().change_scene(level)
