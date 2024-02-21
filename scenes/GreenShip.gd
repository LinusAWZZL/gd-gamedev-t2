extends KinematicBody2D

# Declare member variables here. Examples:
var speed = 10.0
var velocity = Vector2.ZERO
var rollSpeed = 30
var direction
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ship initialized")
	
func _physics_process(delta):
	handle_input()
	calculate_direction(delta)
	velocity = 	move_and_slide(velocity*speed)
	
func handle_input():
	var turning = 0
		
	if Input.is_action_pressed("move_left"):
		#velocity.y *= 1
		turning += 1
		
	if Input.is_action_pressed("move_right"):
		#velocity.y += 1
		turning -= 1
		
	direction = turning*deg2rad(rollSpeed)
	
	velocity = Vector2.ZERO
	velocity += transform.x*0.001
	
	if Input.is_action_pressed("move_up"):
		velocity = transform.x*speed
	
	velocity.normalized()
	
func calculate_direction(delta):
	var a = position + transform.x * 10 * 1/2
	var b = position - transform.x * 10 * 1/2
	a += velocity*delta
	b += velocity.rotated(direction)*delta
	var heading = (a-b).normalized()
	velocity = heading * velocity.length()
	rotation = heading.angle()
	

