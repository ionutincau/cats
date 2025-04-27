extends Node2D

@onready var game: Node2D = $".."
@onready var player: CharacterBody2D = %Player
@onready var bullet_scene = load("res://scenes/bullet.tscn")
@onready var fire_sound: AudioStreamPlayer = $FireSound

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()

func fire():
	fire_sound.play()
	var bullet = bullet_scene.instantiate()
	bullet.position = player.position
	game.add_child.call_deferred(bullet)
	await get_tree().create_timer(10).timeout
	bullet.queue_free()
