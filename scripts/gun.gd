extends Node2D

const BULLET_TIMEOUT = 10
const BULLET_PLAYER_OFFSET = 10

@onready var game: Node2D = $".."
@onready var player: CharacterBody2D = %Player
@onready var bullet_scene = load("res://scenes/bullet.tscn")
@onready var fire_sound: AudioStreamPlayer = $FireSound

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()

func fire():
	fire_sound.play()

	var bullet = create_bullet()
	await get_tree().create_timer(BULLET_TIMEOUT).timeout
	bullet.queue_free()

func create_bullet() -> Node:
	var bullet = bullet_scene.instantiate()

	var direction = player.moving_direction
	bullet.direction = direction
	bullet.position = player.position
	bullet.position.x += BULLET_PLAYER_OFFSET * direction
	game.add_child.call_deferred(bullet)

	return bullet
