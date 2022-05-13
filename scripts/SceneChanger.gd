extends Node

signal on_win()

func change_scene(path, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	assert(get_tree().change_scene(path) == OK)
	
