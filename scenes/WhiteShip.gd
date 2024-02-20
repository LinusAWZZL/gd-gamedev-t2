extends RigidBody2D

# Declare member variables here. Examples:
export var speed = 500.0
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_left"):
		move_local_x(-speed * delta)
	
	if Input.is_action_pressed("move_right"):
		move_local_x(speed * delta)

