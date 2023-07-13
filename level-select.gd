extends Control

var a = 0
func _ready():
	pass


func _on_Button_pressed():
	$sound.play()
	a = 1


func _on_1_pressed():
	$sound.play()
	Global.nivel = 1

func _on_2_pressed():
	$sound.play()
	Global.nivel = 2


func _on_3_pressed():
	$sound.play()
	Global.nivel = 3


func _on_4_pressed():
	$sound.play()
	Global.nivel = 4


func _on_5_pressed():
	$sound.play()
	Global.nivel = 5


func _on_6_pressed():
	$sound.play()
	Global.nivel = 6



func _on_7_pressed():
	$sound.play()
	Global.nivel = 7


func _on_sound_finished():
	if a == 0:
		get_tree().change_scene("res://Loading.tscn")
	elif a == 1:
		get_tree().change_scene("res://meniu.tscn")
