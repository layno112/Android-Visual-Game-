extends KinematicBody2D

class_name Strawberry

var selected = false
var velocity = Vector2.ZERO

signal origin

onready var animation_player = $AnimationPlayer


func _on_mouse_input_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		selected = true
		
		
		
func _physics_process(delta):
	if selected:
		animation_player.play("sway")
		global_position = lerp(global_position,get_global_mouse_position(),10*delta)
		
func _input(event):
	if Input.is_action_just_released("left_click"):
		selected = false
		animation_player.stop()
		emit_signal("origin")
	print(selected)




