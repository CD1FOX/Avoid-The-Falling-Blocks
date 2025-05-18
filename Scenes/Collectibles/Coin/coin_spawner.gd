extends Node2D

var coinScene = preload("res://Scenes/Collectibles/Coin/coin.tscn")
var x = 3 #Min Interval in seconds
var y = 20 #Max Interval in seconds

func _ready() -> void:
	RandomTimer($SpawnerCooldown)
	RandomTimer($SpawnerCooldown2)
	RandomTimer($SpawnerCooldown3)
	RandomTimer($SpawnerCooldown4)
	RandomTimer($SpawnerCooldown5)
	RandomTimer($SpawnerCooldown6)
	RandomTimer($SpawnerCooldown7)
	RandomTimer($SpawnerCooldown8)
	RandomTimer($SpawnerCooldown9)
	RandomTimer($SpawnerCooldown10) 
	
func RandomTimer(timer: Timer):
	var delay = randi_range(x, y)
	timer.wait_time = delay
	timer.start()
	
func CoinSpawner():
	var coin = coinScene.instantiate()
	var randomX = randf_range(65, 1089)
	coin.position = Vector2(randomX, -65)
	add_child(coin)

func _on_spawner_cooldown_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown)

func _on_spawner_cooldown_2_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown2)

func _on_spawner_cooldown_3_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown3)

func _on_spawner_cooldown_4_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown4)

func _on_spawner_cooldown_5_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown5)

func _on_spawner_cooldown_6_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown6)

func _on_spawner_cooldown_7_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown7)

func _on_spawner_cooldown_8_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown8)

func _on_spawner_cooldown_9_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown9)

func _on_spawner_cooldown_10_timeout() -> void:
	CoinSpawner()
	RandomTimer($SpawnerCooldown10)
