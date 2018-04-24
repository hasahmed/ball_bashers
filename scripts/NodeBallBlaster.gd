extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var current_ball = null
export var power = 350
var ball_match = RegEx.new()

func _ready():
	ball_match.compile('NodeBall')

func _ball_has_entered(ball_area):
	if ball_match.search(ball_area.get_parent().name):
		current_ball = ball_area.get_parent()


func _on_click_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			pass
		elif not event.pressed:
			if current_ball:
				current_ball.linear_velocity = Vector2(0, -power)
				current_ball = null

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
