extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[2] == false:
		$"equip-ying".hide()
		$"unequip-ying".hide()
	else:
		$"Buy-ying".hide()
		if Global.skin == 4:
			$"equip-ying".hide()
			$"unequip-ying".show()
		else:
			$"equip-ying".show()
			$"unequip-ying".hide()

func _on_Buyying_pressed():
	$sunet4.play()
	if Global.bani >= 10:
		Global.bani -= 10
		Global.bilacumparata[2] = true
		$"Buy-ying".hide()
		$"equip-ying".show()


func _on_equipying_pressed():
	$sunet4.play()
	Global.skin = 4
	$"equip-ying".hide()
	$"unequip-ying".show()




func _on_unequipying_pressed():
	$sunet4.play()
	Global.skin = 0
	$"unequip-ying".hide()
	$"equip-ying".show()
