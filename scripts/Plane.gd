extends CharacterBody2D
const GRAVITY: float = 1500.0
const FLY: float = -500.0
var trigger:bool = false



@onready var Sprite: AnimatedSprite2D = $Sprite
@onready var animation_player:AnimationPlayer = $AnimationPlayer
@onready var engine_sound = $EngineSound

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	# Creating a gravity 
	#if Input.is_action_just_pressed("fly") == false and velocity.y <= 0:
		#animation_player.queue("idle")
	
	fly()
	
	move_and_slide()
	
	if is_on_floor() == true:
		Death()
	# Stop Animation from doing and stop the physic process when hitting the floor 

func fly() -> void:
	if Input.is_action_just_pressed("fly") == true and trigger:
		velocity.y = FLY
		animation_player.play("fly")
		trigger = false
		
		
	elif not trigger:
		animation_player.queue("down")
		trigger = true
		
func Death():
	engine_sound.stop()
	Sprite.stop()
	set_physics_process(false)
	SignalManager.on_plane_died.emit()





