extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartButton.grab_focus()
	MusicController.play_music()
	


func _on_StartButton_pressed():
	get_tree().change_scene("res://scenes/WORLD.tscn")


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://scenes/Options.tscn")


func _on_AyudaButton_pressed():
	get_tree().change_scene("res://scenes/Ayuda.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
