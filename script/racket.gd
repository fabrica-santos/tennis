extends CharacterBody2D

var speed: float = 250
var direction: Vector2 = Vector2.ZERO

@onready var racket_hit: AudioStreamPlayer2D = $RacketHit


func _physics_process(delta: float) -> void:
	direction.y = Input.get_axis("move_up", "move_down")
	velocity = direction * speed
	move_and_slide()


func _on_ball_collided() -> void:
	racket_hit.play()
