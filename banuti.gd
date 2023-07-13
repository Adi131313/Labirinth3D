extends Spatial

func _ready():
	if Global.banuti.nivel_1[0] == true:
		$holder/coin.queue_free()
	if Global.banuti.nivel_1[1] == true:
		$holder2/coin.queue_free()
	if Global.banuti.nivel_1[2] == true:
		$holder3/coin.queue_free()
	if Global.banuti.nivel_1[3] == true:
		$holder4/coin.queue_free()





func _on_coin1_body_entered(body):
	Global.banuti.nivel_1[0] = true


func _on_coin2_body_entered(body):
	Global.banuti.nivel_1[1] = true


func _on_coin3_body_entered(body):
	Global.banuti.nivel_1[2] = true


func _on_coin4_body_entered(body):
	Global.banuti.nivel_1[3] = true
