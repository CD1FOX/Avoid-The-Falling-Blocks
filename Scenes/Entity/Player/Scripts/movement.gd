extends Node2D

func LeftAndRight():
	var direction = 0
	
	if Input.is_action_pressed("Left"):
		direction -= 1
	if Input.is_action_pressed("Right"):
		direction += 1
	
	return direction
	
