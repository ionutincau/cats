extends Node2D

const BULLET_X_OFFSET = 10
const BULLET_Y_OFFSET = -10

@onready var game: Node2D = $".."
@onready var player: CharacterBody2D = %Player
@onready var bullet_scene = load("res://scenes/bullet.tscn")
@onready var fire_sound: AudioStreamPlayer = $FireSound

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()

func fire():
	fire_sound.play()
	create_bullet()

func create_bullet():
	var bullet = bullet_scene.instantiate()

	var direction = player.moving_direction
	bullet.direction = direction
	bullet.position = player.position
	bullet.position.x += BULLET_X_OFFSET * direction
	bullet.position.y += BULLET_Y_OFFSET

	game.add_child.call_deferred(bullet)
