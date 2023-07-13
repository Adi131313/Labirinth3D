extends Label

func _ready():
	pass

func _process(delta):
	if Global.skin == 1:
		$"equip-white".hide()
		$"unequip-white".show()
	else:
		$"equip-white".show()
		$"unequip-white".hide()


func _on_equipwhite_pressed():
	Global.skin = 1
	$sunet.play()
	$"equip-white".hide()
	$"unequip-white".show()



func _on_unequipwhite_pressed():
	Global.skin = 0
	$sunet.play()
	$"equip-white".show()
	$"unequip-white".hide()
