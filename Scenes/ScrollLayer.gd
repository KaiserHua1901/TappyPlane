extends ParallaxLayer

@onready var sprite_2d = $Sprite2D

@export var texture: Texture
@export var scroll_scale: float = 0.0
@export var texture_x:float = 1920.0
@export var texture_y:float = 1080.0

# Also set the x and y to the size of the sprite it will use. In this case it 1920x1080
# the reason the texture x & y exist is because we will scale it down or up depend on the game
# In this game, it will be scale down, because the game is 480x854

func _ready():
	motion_scale.x = scroll_scale
	var scale_factor = get_viewport_rect().size.y / texture_y 
	sprite_2d.texture = texture
	sprite_2d.scale = Vector2(scale_factor,scale_factor)
	motion_mirroring.x = texture_x * scale_factor

