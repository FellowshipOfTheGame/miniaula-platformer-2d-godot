extends Area2D

func _on_body_entered(_body):
	Global.score += 1
	queue_free()
