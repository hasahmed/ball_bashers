tool
extends Node2D

enum BallColor {RED, YELLOW, GREEN, WILD}
export(BallColor) var ball_color = WILD 

var bodies
var nrd

func _ready():
	# nrd = RegEx.new()
	# nrd.compile('NodeRopeDuo')
	set_ball_color(ball_color)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func right_kill(viewport, event, event_shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			#event was mouse_down
			pass
		elif not event.pressed:
			var ball_joint = find_node('right_ball_joint')
			if ball_joint:
				ball_joint.queue_free()

func _on_Area2D_input_event(viewport, event, event_shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			#event was mouse_down
			pass
		elif not event.pressed:
			var ball_joint = find_node('left_ball_joint')
			if ball_joint:
				ball_joint.queue_free()

# func destroy_right(viewport, event, event_shape_idx):
# 	if event is InputEventMouseButton:
# 		if event.pressed:
# 			#event was mouse_down
# 			pass
# 		elif not event.pressed:
# 			var ball_joint = find_node('right_ball_joint')
# 			if ball_joint:
# 				ball_joint.queue_free()
# 			pass

# func _on_Area2D_input_event(viewport, event, event_shape_idx):
func set_ball_color(val):
	$main_joint/rope_rigid_body/NodeBall.color = val


# func _get_ball_pins_helper(pins_arr, child):
# 	if child.get_child_count() <= 0:
# 		if child.is_in_group('ball_pin'):
# 			pins_arr.append(child)
# 		return
# 	for c in child.get_children():
# 			_get_ball_pins_helper(pins_arr, c)

# func get_ball_pins():
# 	var pins_arr = []
# 	_get_ball_pins_helper(pins_arr, self)
# 	return pins_arr
