extends Node2D
const SCROLL:float = 150.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= SCROLL * delta
	# Scroll the object across the scene 
func _screen_exited():
	queue_free()
	#Make object gone after exist the scene