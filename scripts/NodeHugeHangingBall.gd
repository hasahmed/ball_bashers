extends Node2D

var giant_ball
export var weight = 980


func _ready():
	giant_ball = preload('res://objs/NodeGiantBall.tscn')
	$NodeBall.color = $NodeBall.BallColor.WILD
	$NodeBall.weight = weight

func _on_click_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			pass
		elif not event.pressed:
			var ball = $NodeBall
			if ball:
				var inst = giant_ball.instance()
				var main = $'/root/Main'
				main.add_child(inst)
				inst.position = ball.global_position
				ball.queue_free()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
