extends MeshInstance

onready var skin = get_node(".")
onready var emoji = preload("res://importuri/Emoji.tres")
onready var white = preload("res://importuri/transparent.tres")
onready var golf = preload("res://importuri/golf.tres")
onready var ying = preload("res://importuri/Minge_ying_yang.tres")
onready var plaja = preload("res://importuri/Minge_de_plaja.tres")
onready var biliard = preload("res://importuri/MInge_de_biliard.tres")
onready var Romania = preload("res://importuri/Minge_Romania.tres")
onready var fotbal = preload("res://importuri/Minge_de_fotnal.tres")
onready var tenis = preload("res://importuri/tenis.tres")
onready var champions = preload("res://importuri/champions_league.tres")
onready var volei = preload("res://importuri/Minge_de_volei3.tres")
onready var basket = preload("res://importuri/Minge_de_baschet2.tres")
onready var rugby = preload("res://importuri/Minge_rugby.tres")
onready var pokeball = preload("res://importuri/Pokeball.tres")
onready var coral = preload("res://importuri/minge_coral_albastru.tres")


func _ready():
	if Global.skin == 1:
		skin.set_mesh(white)
	elif Global.skin == 2:
		skin.set_mesh(emoji)
	elif Global.skin == 3:
		skin.set_mesh(golf)
	elif Global.skin == 4:
			skin.set_mesh(ying)
	elif Global.skin == 5:
			skin.set_mesh(plaja)
	elif Global.skin == 6:
			skin.set_mesh(biliard)
	elif Global.skin == 7:
			skin.set_mesh(Romania)
	elif Global.skin == 8:
			skin.set_mesh(fotbal)
	elif Global.skin == 9:
			skin.set_mesh(tenis)
	elif Global.skin == 10:
			skin.set_mesh(champions)
	elif Global.skin == 11:
			skin.set_mesh(volei)
	elif Global.skin == 12:
			skin.set_mesh(basket)
	elif Global.skin == 13:
			skin.set_mesh(rugby)
	elif Global.skin == 14:
			skin.set_mesh(pokeball)
	elif Global.skin == 15:
			skin.set_mesh(coral)
