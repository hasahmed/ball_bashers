extends PinJoint2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_area2D_input_event(viewport, event, event_shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			#event was mouse_down
			pass
		elif not event.pressed:
			$rope_rigid_body/ball_joint.queue_free()
			#event was mouse_up