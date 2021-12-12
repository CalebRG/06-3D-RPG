extends Node

var score = 0
func _ready():
	update_score(0)
func reset():
	score = 0
	
func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " +str(score)
	
