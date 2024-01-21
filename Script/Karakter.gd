extends KinematicBody2D

var Velocity = Vector2()
var dir = 0
var Gravity = 15
var speed = 200
var JumpPower = -600


func _process(_delta):
	if Input.is_action_pressed("D"):
		dir = 1
	else:
		dir = 0

	if Input.is_action_pressed("A"):
		dir = -1
	if Input.is_action_pressed("ui_select") and is_on_floor():
		Velocity.y = JumpPower

	Velocity.x = speed * dir
	Velocity.y += Gravity
	Velocity = move_and_slide(Velocity, Vector2.UP)
