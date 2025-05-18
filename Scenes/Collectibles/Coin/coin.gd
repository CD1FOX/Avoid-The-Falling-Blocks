extends Area2D

var speed = 300

func _process(delta: float) -> void:
	position.y += speed * delta

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Global.score += 1
