extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[6] == false:
		$"equip-fotbal".hide()
		$"unequip-fotbal".hide()
	else:
		$"Buy-fotbal".hide()
		if Global.skin == 8:
			$"equip-fotbal".hide()
			$"unequip-fotbal".show()
		else:
			$"equip-fotbal".show()
			$"unequip-fotbal".hide()

func _on_Buyfotbal_pressed():
	$sunet8.play()
	if Global.bani >= 23:
		Global.bani -= 23
		Global.bilacumparata[6] = true
		$"Buy-fotbal".hide()
		$"equip-fotbal".show()


func _on_equipfotbal_pressed():
	$sunet8.play()
	Global.skin = 8
	$"equip-fotbal".hide()
	$"unequip-fotbal".show()


func _on_unequipfotbal_pressed():
	$sunet8.play()
	Global.skin = 0
	$"unequip-fotbal".hide()
	$"equip-fotbal".show()
