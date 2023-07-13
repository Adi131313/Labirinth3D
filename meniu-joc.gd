extends Control

func _ready():
	pass


func _on_iesirejoc_pressed():
	$sunet.play()
	get_tree().paused = false
	get_tree().change_scene("res://meniu.tscn")
	


func _on_shopjoc_pressed():
	$sunet.play()
	get_tree().paused = false
	get_tree().change_scene("res://Shop.tscn")


func _on_resume_pressed():
	$sunet.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$".".hide()
	get_tree().paused = false
