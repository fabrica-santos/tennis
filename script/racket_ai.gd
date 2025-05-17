extends CharacterBody2D

var speed: float = 150
var direction: Vector2 = Vector2.ZERO

@onready var ball: CharacterBody2D = $"../Ball"
@onready var racket_hit: AudioStreamPlayer2D = $RacketHit


func _physics_process(delta: float) -> void:
	direction.y = global_position.direction_to(ball.global_position).y
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()


func _on_ball_collided() -> void:
	racket_hit.play()
