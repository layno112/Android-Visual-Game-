extends StaticBody2D

signal counter

func _on_Area2D_body_entered(body):
	if body is Strawberry:
		body.queue_free()
		queue_free()
		emit_signal("counter")

		
