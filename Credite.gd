extends Button

func _ready():
	pass
func _on_Credite_pressed():
	$sound2.play()
	get_tree().change_scene("res://Credits.tscn")
