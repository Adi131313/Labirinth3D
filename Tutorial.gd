extends Button

func _ready():
	pass
func _on_Tutorial_pressed():
	$sound4.play()
	get_tree().change_scene("res://Tutorial.tscn")
