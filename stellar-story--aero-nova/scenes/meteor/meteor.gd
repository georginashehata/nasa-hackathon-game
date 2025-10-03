extends Node2D

const GRAVITY : int = 1000
const MAX_VEL : int = 600
const FLAP_SPEED : int = -500

var flying : bool = false
var falling : bool = false
var velocity = Vector2.ZERO

const START_POS = Vector2(100, 400)

func _ready():
	reset()

func reset():
	falling = false
	flying = false
	position = START_POS
	rotation = 0
	velocity = Vector2.ZERO

func _physics_process(delta):
	if flying or falling:
		velocity.y += GRAVITY * delta
		if velocity.y > MAX_VEL:
			velocity.y = MAX_VEL

		position.y += velocity.y * delta
		rotation = deg_to_rad(velocity.y * 0.05)

		if flying:
			$AnimatedSprite2D.play()

func flap():
	if flying and not falling:
		velocity.y = FLAP_SPEED
