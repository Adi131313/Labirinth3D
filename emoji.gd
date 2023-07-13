extends Label

func _ready():
	pass

func _process(delta):
	if Global.bilacumparata[0] == false:
		$"equip-emoji".hide()
		$"unequip-emoji".hide()
	else:
		$"Buy-emoji".hide()
		if Global.skin == 2:
			$"equip-emoji".hide()
			$"unequip-emoji".show()
		else:
			$"equip-emoji".show()
			$"unequip-emoji".hide()

func _on_Buyemoji_pressed():
	$sunet2.play()
	if Global.bani >= 5:
		Global.bilacumparata[0] = true
		Global.bani -= 5
		$"Buy-emoji".hide()
		$"equip-emoji".show()


func _on_equipemoji_pressed():
	$sunet2.play()
	Global.skin = 2
	$"equip-emoji".hide()
	$"unequip-emoji".show()
	
	
	

func _on_unequipemoji_pressed():
	$sunet2.play()
	Global.skin = 0
	$"unequip-emoji".hide()
	$"equip-emoji".show()
