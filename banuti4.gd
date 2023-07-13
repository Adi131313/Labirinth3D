extends Spatial

func _ready():
	if Global.banuti.nivel_4[0] == true:
		$holder/coin.queue_free()
	if Global.banuti.nivel_4[1] == true:
		$holder2/coin.queue_free()
	if Global.banuti.nivel_4[2] == true:
		$holder3/coin.queue_free()
	if Global.banuti.nivel_4[3] == true:
		$holder4/coin.queue_free()
	if Global.banuti.nivel_4[4] == true:
		$holder5/coin.queue_free()
	if Global.banuti.nivel_4[5] == true:
		$holder6/coin.queue_free()
	if Global.banuti.nivel_4[6] == true:
		$holder7/coin.queue_free()
	if Global.banuti.nivel_4[7] == true:
		$holder8/coin.queue_free()
	if Global.banuti.nivel_4[8] == true:
		$holder9/coin.queue_free()
	if Global.banuti.nivel_4[9] == true:
		$holder10/coin.queue_free()
	if Global.banuti.nivel_4[10] == true:
		$holder11/coin.queue_free()
	if Global.banuti.nivel_4[11] == true:
		$holder12/coin.queue_free()
	if Global.banuti.nivel_4[12] == true:
		$holder13/coin.queue_free()



func _on_coin_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin2_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin3_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin4_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin5_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin6_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin7_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin8_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin9_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin10_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin11_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin12_body_entered(body):
	Global.banuti.nivel_4[0] = true


func _on_coin13_body_entered(body):
	Global.banuti.nivel_4[0] = true
