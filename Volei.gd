extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[9] == false:
		$"equip-volei".hide()
		$"unequip-volei".hide()
	else:
		$"Buy-volei".hide()
		if Global.skin == 11:
			$"equip-volei".hide()
			$"unequip-volei".show()
		else:
			$"equip-volei".show()
			$"unequip-volei".hide()

func _on_Buyvolei_pressed():
	$sunet11.play()
	if Global.bani >= 33:
		Global.bani -= 33
		Global.bilacumparata[9] = true
		$"Buy-volei".hide()
		$"equip-volei".show()


func _on_equipvolei_pressed():
	$sunet11.play()
	Global.skin = 11
	$"equip-volei".hide()
	$"unequip-volei".show()


func _on_unequipvolei_pressed():
	$sunet11.play()
	Global.skin = 0
	$"unequip-volei".hide()
	$"equip-volei".show()
