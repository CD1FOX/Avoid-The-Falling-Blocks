extends Label

func _process(_delta: float) -> void:
	var score = Global.score
	
	text = "Score: " + str(score)
