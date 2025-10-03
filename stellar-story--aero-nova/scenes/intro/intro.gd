extends Node2D
@onready var label := $Panel/Label

func _ready():
	label.visible = false

func _on_Timer_timeout():
	print("TIMER FIRED")            # لازم تشوفيها في Output
	label.visible = true
	label.text = "Hi, I'm Pingo the Penguin!\nCan you help me on my journey?"


func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/farm/farm.tscn")
