extends Node

@onready var score_label = Ui.get_node("score_label")
 
var coins = 0

func _ready() -> void:
	update_score_label()

func add_coin():
	coins += 1
	update_score_label()


func update_score_label():
	score_label.text = "x" + str(coins)
