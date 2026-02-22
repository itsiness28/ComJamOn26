extends Node2D
var minijuegoOn = true
var modoInspeccion = false
var faseMinijuego = 0 
var canDrag = false #Usar si al final pongo el tween
var noGenerado = false
var tutorialCompletado = false
var reestablecerEscena = false

#region
var RosaMelano_CdD = preload("res://Assets/Documentacion/Escenas/Rosa Melano/RosaMelano_CdD.tscn")
var RosaMelano_DNI = preload("res://Assets/Documentacion/Escenas/Rosa Melano/RosaMelano_DNI.tscn")
var RosaMelano_PlaveCin = preload("res://Assets/Documentacion/Escenas/Rosa Melano/RosaMelano_PlaveCin.tscn")
var RosaMelano_Testamento = preload("res://Assets/Documentacion/Escenas/Rosa Melano/RosaMelano_Testamento.tscn")


#endregion

func _ready():
	Dialogic.VAR.currentSpeaker = ""	
	if tutorialCompletado == false:
		Dialogic.start("Tutorial")
		tutorialCompletado = true
	
	
	
func _process(delta: float) -> void:
	if (Dialogic.VAR.currentSpeaker == "Rosa_Melano" and noGenerado == false):
		var RM_CdD_instance: Node = RosaMelano_CdD.instantiate()
		add_child(RM_CdD_instance)
		var RM_DNI_instance: Node = RosaMelano_DNI.instantiate()
		add_child(RM_DNI_instance)
		var RM_PlaveCin_instance: Node = RosaMelano_PlaveCin.instantiate()
		add_child(RM_PlaveCin_instance)
		var RM_Testamento_instance: Node = RosaMelano_Testamento.instantiate()
		add_child(RM_Testamento_instance)
		noGenerado = true
		
	

func _on_button_pressed() -> void:
	modoInspeccion = true
	if (Dialogic.VAR.currentSpeaker == "Rosa_Melano"):
			pass
			
			

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/veredicto.tscn")
