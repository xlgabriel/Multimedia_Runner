extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/VolverButton.grab_focus()


func _on_VolverButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")

func _on_MuteButton_pressed():
	MusicController.mute_volume()

func _on_HighVolumeButton_pressed():
	MusicController.high_volume()

func _on_LowVolumeButton_pressed():
	MusicController.low_volume()

#func _on_MuteSFXButton_pressed():
	#$scripts/WORLD/AudioMagnet.volume_db = -40
