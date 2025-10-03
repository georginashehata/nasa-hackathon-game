extends Control

func _on_StartButton_pressed():
	print("START CLICKED")  # لازم تشوفيها في Output
	get_tree().change_scene_to_file("res://scenes/intro/intro.tscn")

func _on_ExitButton_pressed():
	get_tree().quit()
