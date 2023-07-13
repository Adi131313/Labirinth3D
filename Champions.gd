extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[8] == false:
		$"equip-champions".hide()
		$"unequip-champions".hide()
	else:
		$"Buy-champions".hide()
		if Global.skin == 10:
			$"equip-champions".hide()
			$"unequip-champions".show()
		else:
			$"equip-champions".show()
			$"unequip-champions".hide()

func _on_Buychampions_pressed():
	$sunet10.play()
	if Global.bani >= 30:
		Global.bani -= 30
		Global.bilacumparata[8] = true
		$"Buy-champions".hide()
		$"equip-champions".show()


func _on_equipchampions_pressed():
	$sunet10.play()
	Global.skin = 10
	$"equip-champions".hide()
	$"unequip-champions".show()


func _on_unequipchampions_pressed():
	$sunet10.play()
	Global.skin = 0
	$"unequip-champions".hide()
	$"equip-champions".show()
