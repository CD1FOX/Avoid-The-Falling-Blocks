extends CharacterBody2D

var speed = 500

func _physics_process(_delta: float) -> void:
	var direction = $Scripts/Movement.LeftAndRight()
	velocity.x = direction * speed
	
	move_and_slide()
