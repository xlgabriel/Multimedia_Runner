extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/VolverButton.grab_focus()


func _on_VolverButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")
