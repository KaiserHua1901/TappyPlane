extends Control

@onready var labelscore = $MarginContainer/Score


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_score_updated.connect(on_score_updated)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	#labelscore.text = "%05d" % ScoreManager.get_score()
func on_score_updated():
	labelscore.text = "%05d" % ScoreManager.get_score()
	

