extends Area2D

@onready var animation_player = $AnimationPlayer

var PICKUP_ANIMATION_NAME = "pickup"

func _on_body_entered(_body: Node2D) -> void:
	GameManager.add_coin()
	animation_player.play(PICKUP_ANIMATION_NAME)
