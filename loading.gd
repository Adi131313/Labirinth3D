extends Control

var a = 0


func _process(delta):
	if a == 0:
		$punct1.hide()
		$punct2.hide()
		$punct3.hide()
	elif a == 1:
		$punct1.show()
	elif a == 2:
		$punct2.show()
	elif a == 3:
		$punct3.show()
func _on_Timer_timeout():
	a += 1
	if a == 4:
		if Global.nivel == 1:
			get_tree().change_scene("res://level1.tscn")
		elif Global.nivel == 2:
			get_tree().change_scene("res://level2.tscn")
		elif Global.nivel == 3:
			get_tree().change_scene("res://level3.tscn")
		elif Global.nivel == 4:
			get_tree().change_scene("res://level4.tscn")
		elif Global.nivel == 5:
			get_tree().change_scene("res://level5.tscn")
		elif Global.nivel == 6:
			get_tree().change_scene("res://Spatial.tscn")
		elif Global.nivel == 7:
			get_tree().change_scene("res://level7.tscn")
