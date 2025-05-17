extends CharacterBody2D

#physics
const speed = 500

#reference
@onready var movementNode = $Scripts/Movement

func _physics_process(_delta: float) -> void:
	var direction = movementNode.Left_And_Right()
	velocity.x = direction * speed
	move_and_slide()
