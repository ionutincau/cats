extends Area2D


func _on_body_entered(body: Node2D) -> void:
	%game_manager.add_coin()
	queue_free();
