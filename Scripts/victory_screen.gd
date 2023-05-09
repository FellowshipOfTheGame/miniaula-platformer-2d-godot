extends Control

@onready var score_label = %ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	score_label.text = "Você conseguiu!
	Você pegou %d moedas" %[Global.score]




func _on_button_pressed():
	get_tree().change_scene_to_file("res://Cenas/world.tscn")


func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://Cenas/menu.tscn")
