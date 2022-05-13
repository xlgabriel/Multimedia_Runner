extends Node


var main_music = load("res://assets/audio/menumusic.wav")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_music():
	
	$Music.stream = main_music
	
	if $Music.playing == false:
		$Music.play()
