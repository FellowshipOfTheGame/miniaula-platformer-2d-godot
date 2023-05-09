extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score_changed.connect(_update_score)

func _update_score():
	text = "Score: " + str(Global.score)
