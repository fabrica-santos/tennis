extends CharacterBody2D

var speed: float = 300
var direction: Vector2 = Vector2(-1, -1).normalized()

@onready var hit_sound: AudioStreamPlayer2D = $HitSound


func _physics_process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		var collider = get_slide_collision(0).get_collider()
		var normal = get_slide_collision(0).get_normal()
		direction = direction.bounce(normal)
		hit_sound.play()
		if collider.has_method("_on_ball_collided"):
			collider._on_ball_collided()
