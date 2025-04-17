extends Area2D

@onready var timer: Timer = $Timer
@onready var game_over_sound: AudioStreamPlayer2D = $GameOverSound

func _on_body_entered(_body: Node2D) -> void:
	timer.start()
	game_over_sound.play()
	Engine.time_scale = 0.1

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
	GameManager.reset()
