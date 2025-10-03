extends Node2D

@onready var penguin: Sprite2D = $Panel/pingoo
@export var speed: float = 250.0

func _ready() -> void:
	print("FARM READY. penguin ok? ", is_instance_valid(penguin))
	set_process(true)

func _process(delta: float) -> void:
	var dir := 0.0
	if Input.is_action_pressed("move_right"):
		dir += 1.0
	if Input.is_action_pressed("move_left"):
		dir -= 1.0

	if dir != 0.0 and is_instance_valid(penguin):
		print("dir = ", dir)
		penguin.position.x += dir * speed * delta
		penguin.flip_h = (dir < 0.0)


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
