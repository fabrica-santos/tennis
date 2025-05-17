extends Node2D

@onready var ball: CharacterBody2D = $Ball
@onready var player_scored_sound: AudioStreamPlayer = $PlayerScoredSound
@onready var enemy_scored_sound: AudioStreamPlayer = $EnemyScoredSound


func _on_goal_1_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)
	enemy_scored_sound.play()


func _on_goal_2_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)
	player_scored_sound.play()
