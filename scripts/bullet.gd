extends CharacterBody2D

const SPEED = 10000.0

var direction = 1;

func _physics_process(delta: float) -> void:
	velocity.x = direction * SPEED * delta;
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()

func _on_life_timeout() -> void:
	queue_free()
