extends KinematicBody2D

# Declare member variables here. Examples:
var speed = 500.0
var velocity = Vector2()
var rollSpeed = 0.001
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ship initialized")
	
func _physics_process(delta):
	handle_input()
	
func handle_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		
	if Input.is_action_pressed("move_up"):
		velocity.y *= 1
		
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	velocity.normalized()
	move_and_slide(velocity*speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if Input.is_action_pressed(""):
#		move_local_x(-speed * delta)
#	
#	if Input.is_action_pressed(""):
#		move_local_x(speed * delta)

