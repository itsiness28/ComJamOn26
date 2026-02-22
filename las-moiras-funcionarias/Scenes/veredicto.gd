extends Node2D
var audioTijeras = preload("res://Sound/SFX/708397__lucho_pancho__scissors-cutting.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.VAR.RM_estado = true
	Dialogic.VAR.ContadorMuerte 
	Dialogic.VAR.ContadorVida 
	Dialogic.VAR.currentSpeaker	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_vivir_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		Dialogic.VAR.ContadorVida = Dialogic.VAR.ContadorVida + 1
		print((Dialogic.VAR.ContadorVida / 2))
		
		if (Dialogic.VAR.currentSpeaker == "Rosa_Melano"):
			Dialogic.VAR.currentSpeaker	= "Ben_Dover"
		if (Dialogic.VAR.currentSpeaker == "Ben_Dover"):
			Dialogic.VAR.currentSpeaker	= "Dolores_Crotal"
		if (Dialogic.VAR.currentSpeaker == "Dolores_Crotal"):
			Dialogic.VAR.currentSpeaker	= "Olivia_Lopez"
		if (Dialogic.VAR.currentSpeaker == "Olivia_Lopez"):
			Dialogic.VAR.currentSpeaker	= "La_Roca"
			
		print(Dialogic.VAR.currentSpeaker)


func _on_area_2d_morir_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		Dialogic.VAR.ContadorMuerte = Dialogic.VAR.ContadorMuerte +1
		get_tree().change_scene_to_file("res://Scenes/Final.tscn")
