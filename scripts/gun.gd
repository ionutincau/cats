extends Node2D

@onready var game: Node2D = $".."
@onready var player: CharacterBody2D = %Player
@onready var bullet_scene = load("res://scenes/bullet.tscn")

func _ready() -> void:
	fire()

func fire():
	var bullet = bullet_scene.instantiate()
	bullet.position = player.position
	game.add_child.call_deferred(bullet)
