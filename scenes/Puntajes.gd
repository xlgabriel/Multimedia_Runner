extends Node2D

var scores = []
const filepath = "user://scores"
var mostrar = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	load_scores()
	#mostrar_puntaje()
	
	get_node("Scores").set_text(str(scores))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func load_scores():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	scores = file.get_var()
	file.close()
	pass
	
	
func mostrar_puntaje():
	var ver = ""
	for i in scores:
		ver = ver + "Puntaje: " + str(scores[i])
	get_node("Scores").set_text(ver)


func delete_scores():
	var file = File.new()
	file.open(filepath, File.WRITE)
	scores = []
	file.store_var(scores)
	file.close()
	get_node("Scores").set_text(str(scores))
	pass 
	


func _on_Volver_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")


func _on_Eliminar_pressed():
	delete_scores()
	pass # Replace with function body.
