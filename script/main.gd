extends Node2D

@onready var ball: CharacterBody2D = $Ball


func _on_goal_1_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)


func _on_goal_2_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)
