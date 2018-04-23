extends Node2D

export(String, FILE) var next_level
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var tot_balls = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func add_ball():
	tot_balls += 1

func dec_ball():
	tot_balls -= 1
	check_win()

func check_win():
	if tot_balls <= 0:
		win_proc()


func win_proc():
	$label_win.visible = true
	$next_level_delay.start()


func invalid_ball():
	lose_proc()

func lose_proc():
	$label_lose.visible = true

func _on_next_level_delay_timeout():
	get_tree().change_scene(next_level)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
