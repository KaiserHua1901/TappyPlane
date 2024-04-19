extends Node

var score: int = 0 
var high_score: int = 0 

func get_score() -> int:
	return score
	
func get_high_score() -> int:
	return high_score
	
func set_score(value:int) -> void:
	score = value
	print("Score:", score)
	if score > high_score:
		high_score = score
		print("New High Score:", high_score)
		
func increment_score() -> void:
	set_score(score + 1)
	
