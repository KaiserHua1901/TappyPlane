extends Control
@onready var go_label = $GOLabel
@onready var space_label = $SpaceLabel
@onready var game_over_timer = $GameOverTimer
@onready var game_over_sound = $GameOverSound


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	SignalManager.on_plane_died.connect(game_over)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	space_restart()
	pass

func game_over():
	show()
	game_over_timer.start()
	game_over_sound.play()

func _on_game_over_timer_timeout():
	go_label.hide()
	space_label.show()

func space_restart():
	if space_label.visible == true and Input.is_action_just_pressed("fly") == true:
		GameManager.load_main_menu()
