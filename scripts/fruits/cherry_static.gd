extends StaticBody2D



func _on_Area2D_body_entered(body):
	if body is Cherry:
		body.queue_free()
		queue_free()
		emit_signal("counter")
