extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0

func _respawn():
	get_tree().reload_current_scene()

func _on_player_died():
	_respawn()

func _victory():
	#chama uma cena de vitória que exibe seu score
	print("You did it!")
	get_tree().change_scene_to_file("res://Cenas/victory_screen.tscn")


func _on_goal_body_entered(_body):
	_victory()
