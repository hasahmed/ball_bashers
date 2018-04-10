extends RigidBody2D

var follow_mouse = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if follow_mouse:
		self.position = get_global_mouse_position()


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			follow_mouse = true
		elif not event.pressed:
			follow_mouse = false
