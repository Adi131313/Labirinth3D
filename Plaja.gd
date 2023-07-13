extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[3] == false:
		$"equip-plaja".hide()
		$"unequip-plaja".hide()
	else:
		$"Buy-plaja".hide()
		if Global.skin == 5:
			$"equip-plaja".hide()
			$"unequip-plaja".show()
		else:
			$"equip-plaja".show()
			$"unequip-plaja".hide()

func _on_Buyplaja_pressed():
	$sunet5.play()
	if Global.bani >= 13:
		Global.bani -= 13
		Global.bilacumparata[3] = true
		$"Buy-plaja".hide()
		$"equip-plaja".show()


func _on_equipplaja_pressed():
	$sunet5.play()
	Global.skin = 5
	$"equip-plaja".hide()
	$"unequip-plaja".show()


func _on_unequipplaja_pressed():
	$sunet5.play()
	Global.skin = 0
	$"unequip-plaja".hide()
	$"equip-plaja".show()
