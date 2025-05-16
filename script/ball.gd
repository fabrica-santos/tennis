extends CharacterBody2D

var speed: float = 300
var direction: Vector2 = Vector2(-1, -1).normalized()


func _physics_process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		var normal = get_slide_collision(0).get_normal()
		direction = direction.bounce(normal)
