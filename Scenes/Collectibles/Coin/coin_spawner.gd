extends Node2D

const coinScene = preload("res://Scenes/Collectibles/Coin/coin.tscn")
const minInterval = 3
const maxInterval = 20
const coinCount = 10

func _ready() -> void:
	
	randomize()
	
	for i in coinCount:
		var timer = Timer.new()
		add_child(timer)
		timer.timeout.connect(func():
			_SpawnCoin()
			_RandomizeTimer(timer)
		)

		_RandomizeTimer(timer)

func _RandomizeTimer(timer: Timer):
	timer.wait_time = randi_range(minInterval, maxInterval)
	timer.start()
	
func _SpawnCoin():
	var coin = coinScene.instantiate()
	coin.position = Vector2(randf_range(65, 1089), -65)
	add_child(coin)

func _process(delta: float) -> void:
	print($".".get_child_count())
