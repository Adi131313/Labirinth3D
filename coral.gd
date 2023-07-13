extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[13] == false:
		$"equip-coral".hide()
		$"unequip-coral".hide()
	else:
		$"Buy-coral".hide()
		if Global.skin == 15:
			$"equip-coral".hide()
			$"unequip-coral".show()
		else:
			$"equip-coral".show()
			$"unequip-coral".hide()

func _on_Buycoral_pressed():
	$sunet15.play()
	if Global.bani >= 50:
		Global.bani -= 50
		Global.bilacumparata[13] = true
		$"Buy-coral".hide()
		$"equip-coral".show()

func _on_equipcoral_pressed():
	$sunet15.play()
	Global.skin = 15
	$"equip-coral".hide()
	$"unequip-coral".show()

func _on_unequipcoral_pressed():
	$sunet15.play()
	Global.skin = 0
	$"unequip-coral".hide()
	$"equip-coral".show()
