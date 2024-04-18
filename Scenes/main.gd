extends Node2D
@export var Pipes_Scene: PackedScene
@onready var pipes_holder = $PipesHolder
@onready var spawn_upper = $SpawnUpper
@onready var spawn_lower = $SpawnLower

# Called when the node enters the scene tree for the first time.
func _ready():
	Spawn_Pipes()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Spawn_Pipes():
	var Pipe_instantiate = Pipes_Scene.instantiate()
	var y_position = randf_range(spawn_upper.position.y, spawn_lower.position.y) 
	Pipe_instantiate.position = Vector2(spawn_lower.position.x, y_position)
	pipes_holder.add_child(Pipe_instantiate)
	#add_child(Pipe_instantiate)
	
	
func _on_spawn_timer_timeout():
	Spawn_Pipes()
