extends Node2D

@onready var penguin: CharacterBody2D = $Bird
@onready var spawner: Timer = $MeteorTimer
@onready var obstacles: Node2D = $Obstacles

@export var meteor_scene: PackedScene


func _ready() -> void:
	randomize()
	spawner.timeout.connect(_spawn_meteor)
	spawner.start()  # ممكن تسيبي Autostart Off في التايمر لأننا بنبدأه هنا

func _spawn_meteor() -> void:
	var m: Area2D = meteor_scene.instantiate()
	var h := get_viewport_rect().size.y
	m.position = Vector2(get_viewport_rect().size.x + 120.0, randf_range(80.0, h - 80.0))
	obstacles.add_child(m)
