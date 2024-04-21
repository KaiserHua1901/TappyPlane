extends Node2D
const SCROLL:float = 150.0

@onready var score_sound = $ScoreSound




func _process(delta):
	position.x -= SCROLL * delta
	# Scroll the object across the scene 
func _screen_exited():
	queue_free()
	#Make object gone after exist the scene


func _on_body_entered(body):
	if body.is_in_group(GameManager.GROUP_PLAYER) == true: 
		body.Death()
		

func _on_laser_body_exited(body):
	if body.is_in_group(GameManager.GROUP_PLAYER) == true: 
		ScoreManager.increment_score()
		score_sound.play()
