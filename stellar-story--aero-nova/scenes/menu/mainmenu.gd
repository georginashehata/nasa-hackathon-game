extends Control

func _on_Button_pressed():
	get_tree().change_scene_to_file("res://scenes/intro/Intro.tscn")

func _on_Button2_pressed():
	get_tree().quit()


func _on_start_button_pressed() -> void:
	pass # Replace with function body.
