extends RigidBody2D

var follow_mouse = false
enum BallColor {RED, YELLOW, GREEN, WILD}
export(BallColor) var color = WILD


func _ready():
	print('thign ', color)
	set_color(color)
	if color != WILD:
		$'/root/Main/Globals'.add_ball()
		print('from NodeBall.gd', color)

func _process(delta):
	if follow_mouse:
		self.position = get_global_mouse_position()


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			pass
			# follow_mouse = true
		elif not event.pressed:
			follow_mouse = false


func set_color(val):
	color = val
	all_invisible()
	match val:
		RED:
			$mask_red.visible = true
		YELLOW:
			$mask_yellow.visible = true
		GREEN:
			$mask_green.visible = true
		WILD:
			all_invisible()
func get_color():
	return color

func all_invisible():
	var children = get_children()
	for child in children:
		if child.is_in_group("ball_sprite"):
			child.visible = false