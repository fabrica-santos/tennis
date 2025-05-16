extends CharacterBody2D

var speed: float = 250
var direction: Vector2 = Vector2.ZERO


func _physics_process(delta: float) -> void:
	direction.y = Input.get_axis("move_up", "move_down")
	velocity = direction * speed
	move_and_slide()
