extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scores = []
const filepath = "user://scores"


# Called when the node enters the scene tree for the first time.
func _ready():
	load_scores()
	var lastScore = scores.back()
	var mostrar = "Puntaje Final: " + str(lastScore)
	get_node("Puntajes").set_text(mostrar)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_VolverButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")

func load_scores():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	scores = file.get_var()
	file.close()
	pass
