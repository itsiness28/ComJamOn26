extends Node2D
var selected = false
var mouse_offset = Vector2 (0,0)
#yoto kotutoto
func _process(Delta):
	if selected:
		followMouse()
		
func followMouse():
	position = get_global_mouse_position() + mouse_offset
