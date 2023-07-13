extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[10] == false:
		$"equip-basket".hide()
		$"unequip-basket".hide()
	else:
		$"Buy-basket".hide()
		if Global.skin == 12:
			$"equip-basket".hide()
			$"unequip-basket".show()
		else:
			$"equip-basket".show()
			$"unequip-basket".hide()

func _on_Buybasket_pressed():
	$sunet12.play()
	if Global.bani >= 35:
		Global.bani -= 35
		Global.bilacumparata[10] = true
		$"Buy-basket".hide()
		$"equip-basket".show()


func _on_equipbasket_pressed():
	$sunet12.play()
	Global.skin = 12
	$"equip-basket".hide()
	$"unequip-basket".show()


func _on_unequipbasket_pressed():
	$sunet12.play()
	Global.skin = 0
	$"unequip-basket".hide()
	$"equip-basket".show()
