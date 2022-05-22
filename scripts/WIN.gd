extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
<<<<<<< Updated upstream
=======
	$INFORMACION.grab_focus()
	load_scores()
	var lastScore = scores.back()
	var mostrar = "Puntaje Final: " + str(lastScore)
	get_node("Puntajes").set_text(mostrar)
>>>>>>> Stashed changes
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_VolverButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")
