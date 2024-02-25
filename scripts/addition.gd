extends Node2D


var counter = 0
var next_click = true

func _on_next_pressed():
	if next_click == true:
		$AnimationPlayer.play_backwards("move_back")
		next_click = false
		counter += 1
		if counter == 1:
			$questions.move(Vector2(-1080,0))
			$questions2.move(Vector2(0,0))
			$questions3.move(Vector2(1080,0))
		elif counter == 2:
			$questions2.move(Vector2(-1080,0))
			$questions3.move(Vector2(0,0))
	


func _on_questions_move_back():
	next_click = true
	$AnimationPlayer.play("move_back")
