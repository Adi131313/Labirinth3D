extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[4] == false:
		$"equip-biliard".hide()
		$"unequip-biliard".hide()
	else:
		$"Buy-biliard".hide()
		if Global.skin == 6:
			$"equip-biliard".hide()
			$"unequip-biliard".show()
		else:
			$"equip-biliard".show()
			$"unequip-biliard".hide()

func _on_Buybiliard_pressed():
	$sunet6.play()
	if Global.bani >= 16:
		Global.bani -= 16
		Global.bilacumparata[4] = true
		$"Buy-biliard".hide()
		$"equip-biliard".show()

func _on_equipbiliard_pressed():
	$sunet6.play()
	Global.skin = 6
	$"equip-biliard".hide()
	$"unequip-biliard".show()


func _on_unequipbiliard_pressed():
	$sunet6.play()
	Global.skin = 0
	$"unequip-biliard".hide()
	$"equip-biliard".show()
