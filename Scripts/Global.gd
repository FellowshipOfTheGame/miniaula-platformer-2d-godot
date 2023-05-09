extends Node

var score : int = 0:
	set(value): 
		score = value
		score_changed.emit()

signal score_changed


