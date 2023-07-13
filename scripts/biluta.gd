extends KinematicBody
var gravity = Vector3.DOWN * 8
var velocity = Vector3(0,0,0)
const speed = 10
const rotire = 8
const sarit=6
const spin = 0.08
var jump = false
var jump_speed = 0
const Hlook = 0.6
const Vlook = 0.6

const H_LOOK_SENS = 0.2
 
onready var cam = $vedere

func _ready():
	pass

func _physics_process(delta):
	velocity += gravity * delta
	velocity = move_and_slide(velocity, Vector3.UP)
	if jump and is_on_floor():
		velocity.y = jump_speed
	var vy = velocity.y
	velocity = Vector3()
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		velocity.x=0
	elif Input.is_action_pressed("ui_left"):
		velocity += transform.basis.x * speed
		$MeshInstance.rotate_z(deg2rad(-rotire))
	elif Input.is_action_pressed("ui_right"):
		velocity += -transform.basis.x * speed
		$MeshInstance.rotate_z(deg2rad(rotire))
	else: 
		velocity.x= lerp(velocity.x,0,0.3)
		
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.z=0
	elif Input.is_action_pressed("ui_down"):
		velocity += -transform.basis.z * speed
		$MeshInstance.rotate_x(deg2rad(-rotire))
	elif Input.is_action_pressed("ui_up"):
		velocity += transform.basis.z * speed
		$MeshInstance.rotate_x(deg2rad(rotire))
	else: 
		 velocity.z= lerp(velocity.z,0,0.3)
	velocity.y = vy
	jump = false
	if Input.is_action_just_pressed("ui_page_up"):
		jump = true
		

func _on_virusu_body_entered(body):
	if body.name == "MINGEA":
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene("res://sfarsit.tscn")

func _input(event):
	if event is InputEventMouseMotion:
		cam.rotation_degrees.x = clamp(cam.rotation_degrees.x, -90, 90)
		rotation_degrees.y -= event.relative.x * H_LOOK_SENS

