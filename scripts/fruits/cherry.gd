extends KinematicBody2D

class_name Cherry

var selected = false

onready var animation_player = $AnimationPlayer



func _on_mouse_input_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):

		selected = true
		z_index = 1

func _physics_process(delta):
	if selected:
		animation_player.play("sway")
		global_position = lerp(global_position,get_global_mouse_position(),10*delta)
		
func _input(event):
	if Input.is_action_just_released("left_click"):
		selected = false
		animation_player.stop()
		z_index = 0

