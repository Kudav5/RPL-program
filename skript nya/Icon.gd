extends Area2D
var is_seret = true
func _process(delta):
	if is_seret:
		set_position(get_viewport().get_mouse_position())

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("seret"):
			is_seret = true
		else:
			is_seret = false
	pass # Replace with function body.


func _on_Area2D_ready():
	is_seret = false
	pass # Replace with function body.
