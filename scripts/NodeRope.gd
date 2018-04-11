extends PinJoint2D

enum BallColor {RED, YELLOW, GREEN, WILD}
export(BallColor) var ball_color = WILD

func _ready():
	pass
	set_ball_color(ball_color)

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

func set_ball_color(val):
	$rope_rigid_body/NodeBall.color = val