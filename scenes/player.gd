extends Node2D

const JUMP_VELOCITY = -300
const GRAVITY = 500

var velocity_y = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(250, 300)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	velocity_y += GRAVITY * delta
		
	if Input.is_action_just_pressed("jump"):
		velocity_y = JUMP_VELOCITY
		
	position.y += velocity_y * delta
