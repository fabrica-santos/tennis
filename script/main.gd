extends Node2D

var score1: int = 0
var score2: int = 0

@onready var ball: CharacterBody2D = $Ball
@onready var player_scored_sound: AudioStreamPlayer = $PlayerScoredSound
@onready var enemy_scored_sound: AudioStreamPlayer = $EnemyScoredSound
@onready var score_label: RichTextLabel = %Score


func _on_goal_1_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)
	enemy_scored_sound.play()
	score2 += 1
	update_score()


func _on_goal_2_body_entered(body: Node2D) -> void:
	ball.global_position = Vector2(320, 180)
	player_scored_sound.play()
	score1 += 1
	update_score()


func update_score() -> void:
	score_label.text = "[wave]" + str(score1) + " / " + str(score2)
