extends Node

const GROUP_PLAYER: String = "player"

var game_scene:PackedScene = preload("res://Scenes/GameScene.tscn")
var main_menu_scene:PackedScene = preload("res://Scenes/main_menu.tscn")

func load_game_scene() -> void:
	get_tree().change_scene_to_packed(game_scene)

func load_main_menu() -> void: 
	get_tree().change_scene_to_packed(main_menu_scene)
