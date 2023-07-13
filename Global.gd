extends Node
var skin = 1
var bani = 0
var bilacumparata = [false,false,false,false,false,false,false,false,false,false,false,false,false,false]
var but = 0
var titlu = ["Well done!"," Bravo!","Congrats!","Good job!","You're doing well!","Awesome!","Great!"]
var time = 0
var nivel = 0
var banuti = {
	nivel_1 = [false,false,false,false],
	nivel_2 = [false,false,false,false,false,false,false,false,false,false],
	nivel_3 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
	nivel_4 = [false,false,false,false,false,false,false,false,false,false,false,false,false],
	nivel_5 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
	nivel_6 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
	nivel_7 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	}

var date_joc = {
	data_1 = 0,
	data_2 = 0,
	data_3 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false],
	data_4 = {
		nivel_1 = [false,false,false,false],
		nivel_2 = [false,false,false,false,false,false,false,false,false,false],
		nivel_3 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
		nivel_4 = [false,false,false,false,false,false,false,false,false,false,false,false,false],
		nivel_5 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
		nivel_6 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
		nivel_7 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
		}
	}

func _ready():
	var path = Directory.new()
	if !path.dir_exists("user://Labirinth"):
		path.open("user://")
		path.make_dir("user://Labirinth")
	#reset_game()
	load_game()


func save_game():
	var save = File.new()
	save.open("user://Labirinth/save.sav",File.WRITE)
	var salvare_date = date_joc
	salvare_date.data_1 = bani
	salvare_date.data_2 = skin
	salvare_date.data_3 = bilacumparata
	salvare_date.data_4.nivel_1 = banuti.nivel_1
	salvare_date.data_4.nivel_2 = banuti.nivel_2
	salvare_date.data_4.nivel_3 = banuti.nivel_3
	salvare_date.data_4.nivel_4 = banuti.nivel_4
	salvare_date.data_4.nivel_5 = banuti.nivel_5
	salvare_date.data_4.nivel_6 = banuti.nivel_6
	salvare_date.data_4.nivel_7 = banuti.nivel_7
	save.store_line(to_json(salvare_date))
	save.close()

func load_game():
	var _load = File.new()
	if !_load.file_exists("user://Labirinth/save.sav"):
		return
	_load.open("user://Labirinth/save.sav",File.READ)
	var citire_date = date_joc
	if !_load.eof_reached():
		var data_provizorie = parse_json(_load.get_line())
		if data_provizorie != null:
			citire_date = data_provizorie
	_load.close()
	bani = citire_date.data_1
	skin = citire_date.data_2
	bilacumparata = citire_date.data_3
	banuti.nivel_1 = citire_date.data_4.nivel_1
	banuti.nivel_2 = citire_date.data_4.nivel_2
	banuti.nivel_3 = citire_date.data_4.nivel_3
	banuti.nivel_4 = citire_date.data_4.nivel_4
	banuti.nivel_5 = citire_date.data_4.nivel_5
	banuti.nivel_6 = citire_date.data_4.nivel_6
	banuti.nivel_7 = citire_date.data_4.nivel_7
	
func reset_game():
	var reset = File.new()
	reset.open("user://Labirinth/save.sav",File.WRITE)
	var resetare_date = date_joc
	resetare_date.data_1 = 0
	resetare_date.data_2 = 1
	resetare_date.data_3 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_1 = [false,false,false,false]
	resetare_date.data_4.nivel_2 = [false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_3 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_4 = [false,false,false,false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_5 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_6 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	resetare_date.data_4.nivel_7 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	reset.store_line(to_json(resetare_date))
	reset.close()

