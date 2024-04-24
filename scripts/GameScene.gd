extends Node2D
@export var Pipes_Scene: PackedScene
@onready var pipes_holder = $PipesHolder
@onready var spawn_upper = $SpawnUpper
@onready var spawn_lower = $SpawnLower
@onready var spawn_timer = $SpawnTimer

func _ready():
	SignalManager.on_plane_died.connect(stop_pipes)
	ScoreManager.set_score(0)
	Spawn_Pipes()

func Spawn_Pipes():
	var Pipe_instantiate = Pipes_Scene.instantiate()
	var y_position = randf_range(spawn_upper.position.y, spawn_lower.position.y) 
	Pipe_instantiate.position = Vector2(spawn_lower.position.x, y_position)
	pipes_holder.add_child(Pipe_instantiate)

func _on_spawn_timer_timeout():
	Spawn_Pipes()

func stop_pipes():
	spawn_timer.stop()
	for pipe in pipes_holder.get_children():
		pipe.set_process(false)



	
