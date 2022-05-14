extends Node


var main_music = load("res://assets/audio/menumusic.wav")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_music():
	
	$Music.stream = main_music
	
	if $Music.playing == false:
		$Music.play()

func mute_volume():
	$Music.volume_db = -40

func high_volume():
	$Music.volume_db = 0
	
func low_volume():
	$Music.volume_db = -12
	
func stop_music():
	
	$Music.stream = main_music
	
	if $Music.playing == false:
		$Music.stop()
