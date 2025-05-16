extends CharacterBody2D

var speed: float = 300
var direction: Vector2 = Vector2(-1, 0)


func _physics_process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()
