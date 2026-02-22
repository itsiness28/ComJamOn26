extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("Day1_1_Tutorial")
	Dialogic.VAR._1_1CinemDone = false	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if (Dialogic.VAR._1_1CinemDone == true):
			get_tree().change_scene_to_file("res://Scenes/Minigames.tscn")
	
