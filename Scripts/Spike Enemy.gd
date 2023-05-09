extends CharacterBody2D

const WALKING_SPEED = 60

@onready var right = $Right
@onready var left = $Left
@onready var sprite_2d = $Sprite2D

func _ready():
	velocity = Vector2.RIGHT*WALKING_SPEED

func _physics_process(_delta):
	var ground_detector: RayCast2D = right as RayCast2D
	if velocity.x < 0:
		ground_detector = left
		sprite_2d.flip_h = velocity.x > 0
	if not ground_detector.is_colliding():
		velocity.x = -velocity.x
	move_and_slide()


func _on_hitbox_body_entered(body):
	body.die()
