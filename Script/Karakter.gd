extends KinematicBody2D

var velocity = Vector2.ZERO
var dir = 0

const  speed = 128
const jumpPower = -512


func _process(_delta):
	if Input.is_action_pressed("move_right"):
		dir = 1
	else:
		dir = 0

	if Input.is_action_pressed("move_left"):
		dir = -1
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jumpPower

	velocity.x = speed * dir
	velocity.y += 15
	velocity = move_and_slide(velocity, Vector2.UP)
