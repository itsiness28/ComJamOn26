extends Node2D
var selected = false
var mouse_offset = Vector2 (0,0)

func _process(Delta):
	if selected:
		followMouse()
		
func followMouse():
	position = get_global_mouse_position() + mouse_offset


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
