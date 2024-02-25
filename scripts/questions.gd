extends Node2D

signal move_back
onready var animation_player = $AnimationPlayer

func move(target):
	var tween = $Tween
	tween.interpolate_property(self,"position",position,target,1,tween.TRANS_QUINT,tween.EASE_OUT)
	tween.start()

func _on_Label_pressed():
	animation_player.play("correct")
	$Label.set_mouse_filter(Control.MOUSE_FILTER_IGNORE)


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "correct":
		emit_signal("move_back")
		
