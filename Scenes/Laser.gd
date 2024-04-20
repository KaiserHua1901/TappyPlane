extends Area2D
@onready var aniplayer = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_plane_died.connect(stop_laser)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func stop_laser():
	aniplayer.stop()
