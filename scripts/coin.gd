extends Area2D

@onready var game_manager = %game_manager
@onready var animation_player = $AnimationPlayer

var PICKUP_ANIMATION_NAME = "pickup"

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_coin()
	animation_player.play(PICKUP_ANIMATION_NAME)
