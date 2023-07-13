extends Control

func _ready():
	$time/minute.text = str(Global.time / 60)
	$time/secunde.text = str(Global.time % 60)
	$titlu.text = Global.titlu[Global.nivel-1]
	if Global.time % 60 > 9:
		$time/secunde2.hide()
	if Global.time / 60 > 9:
		$time/minute2.hide()

func _on_Select_pressed():
	$sunet.play()
	get_tree().change_scene("res://level-select.tscn")


func _on_next_pressed():
	$sunet.play()
	Global.nivel += 1
	get_tree().change_scene("res://Loading.tscn")


func _on_restart_pressed():
	$sunet.play()
	get_tree().change_scene("res://Loading.tscn")
