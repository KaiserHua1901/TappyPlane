extends Area2D
@onready var aniplayer = $AnimationPlayer

func _ready():
	SignalManager.on_plane_died.connect(stop_laser)

func stop_laser():
	aniplayer.stop()
