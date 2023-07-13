extends Spatial

func _ready():
	if Global.banuti.nivel_2[0] == true:
		$holder/coin.queue_free()
	if Global.banuti.nivel_2[1] == true:
		$holder2/coin.queue_free()
	if Global.banuti.nivel_2[2] == true:
		$holder3/coin.queue_free()
	if Global.banuti.nivel_2[3] == true:
		$holder4/coin.queue_free()
	if Global.banuti.nivel_2[4] == true:
		$holder5/coin.queue_free()
	if Global.banuti.nivel_2[5] == true:
		$holder6/coin.queue_free()
	if Global.banuti.nivel_2[6] == true:
		$holder7/coin.queue_free()
	if Global.banuti.nivel_2[7] == true:
		$holder8/coin.queue_free()
	if Global.banuti.nivel_2[8] == true:
		$holder9/coin.queue_free()
	if Global.banuti.nivel_2[9] == true:
		$holder10/coin.queue_free()



func _on_coin_body_entered(body):
	Global.banuti.nivel_2[0] = true


func _on_coin2_body_entered(body):
	Global.banuti.nivel_2[1] = true


func _on_coin3_body_entered(body):
	Global.banuti.nivel_2[2] = true


func _on_coin4_body_entered(body):
	Global.banuti.nivel_2[3] = true


func _on_coin5_body_entered(body):
	Global.banuti.nivel_2[4] = true


func _on_coin6_body_entered(body):
	Global.banuti.nivel_2[5] = true


func _on_coin7_body_entered(body):
	Global.banuti.nivel_2[6] = true


func _on_coin8_body_entered(body):
	Global.banuti.nivel_2[7] = true


func _on_coin9_body_entered(body):
	Global.banuti.nivel_2[8] = true


func _on_coin10_body_entered(body):
	Global.banuti.nivel_2[9] = true
