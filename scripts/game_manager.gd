extends Node

@onready var score_label = %score_label

var coins = 0

func add_coin():
	coins += 1
	score_label.text = "coins: " + str(coins)
