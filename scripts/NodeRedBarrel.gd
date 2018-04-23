extends RigidBody2D
enum BarrelColor {RED, YELLOW, GREEN}
export(BarrelColor) var barrel_color = RED setget set_color, get_color

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var globals

func _ready():
	globals = $'/root/Main/Globals'

func set_color(val):
	all_invisible()
	if !val:
		val = RED
	barrel_color = val
	if !has_node('barrel_red_sprite'):
		return
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


func ball_has_collided(ball_area):
	if ball_area.get_parent().color == self.barrel_color:
		globals.dec_ball()
	else:
		globals.invalid_ball()

	ball_area.get_parent().queue_free()
