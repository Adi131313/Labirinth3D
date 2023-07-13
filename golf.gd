extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[1] == false:
		$"equip-golf".hide()
		$"unequip-golf".hide()
	else:
		$"Buy-golf".hide()
		if Global.skin == 3:
			$"equip-golf".hide()
			$"unequip-golf".show()
		else:
			$"equip-golf".show()
			$"unequip-golf".hide()

func _on_Buygolf_pressed():
	$sunet3.play()
	if Global.bani >= 8:
		Global.bani -= 8
		Global.bilacumparata[1] = true
		$"Buy-golf".hide()
		$"equip-golf".show()



func _on_equipgolf_pressed():
	$sunet3.play()
	Global.skin = 3
	$"equip-golf".hide()
	$"unequip-golf".show()
	
	
	
	


func _on_unequipgolf_pressed():
	$sunet3.play()
	Global.skin = 0
	$"unequip-golf".hide()
	$"equip-golf".show()
