extends CharacterBody2D

const default_speed = 300
var SPEED = 300.0
var direction = Vector2.ZERO
func _ready():
	direction.y = [1,-1].pick_random()
	direction.x = [1,-1].pick_random()
	SPEED = default_speed

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if direction:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	if direction.y == 0:
		direction.y = 1

	move_and_slide()

