tool
extends RigidBody2D
enum BarrelColor {RED, YELLOW, GREEN}
export(BarrelColor) var barrel_color = RED setget set_color, get_color

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

func set_color(val):
	all_invisible()
	barrel_color = val
	match val:
		RED:
			$barrel_red_sprite.visible = true
		YELLOW:
			$barrel_yellow_sprite.visible = true
		GREEN:
			$barrel_green_sprite.visible = true

func get_color():
	return barrel_color


func all_invisible():
	var children = get_children()
	for child in children:
		if child.is_in_group("barrel_sprite"):
			child.visible = false