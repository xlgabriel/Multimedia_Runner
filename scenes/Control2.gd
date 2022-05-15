extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pause_pressed():
	if get_tree().paused ==true:
		get_tree().paused ==false
		$efecto.interpolate_property($botones, "rect_position", $botones.rect_position, $botones.rect_position+Vector2(653.661,0),1,Tween.TRANS_BACK)
		$efecto.start()
	else:
		get_tree().paused ==true
		$efecto.interpolate_property($botones, "rect_position", $botones.rect_position, $botones.rect_position+Vector2(-653.661,0),1,Tween.TRANS_BACK)
		$efecto.start()
