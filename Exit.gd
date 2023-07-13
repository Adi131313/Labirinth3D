extends Button

func _ready():
	pass


func _on_Exit_pressed():
	$sound3.play()
	Global.save_game()
	get_tree().quit()
