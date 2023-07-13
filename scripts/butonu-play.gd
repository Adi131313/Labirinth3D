extends Button

func _ready():
	pass
	
func _on_butonuplay_pressed():
	$sound.play()
	get_tree().change_scene("res://level-select.tscn")
