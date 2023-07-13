extends Area
var a = 0
var b = 0
var c = 0
func _ready():
	pass

func _on_Cylinder001_body_entered(body):
	if a == 0 and body.name == "MINGEA":
		$AnimationPlayer/.play("animatie-buton")
		c = 1
		a = 1
		Global.but = Global.but + 1
