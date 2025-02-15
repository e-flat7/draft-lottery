extends RigidBody2D

var team = 1
var team_to_colour = {
	1: preload("res://src/gfx/overlay_red.png"),
	2: preload("res://src/gfx/overlay_orange.png"),
	3: preload("res://src/gfx/overlay_yellow.png"),
	4: preload("res://src/gfx/overlay_green.png"),
	5: preload("res://src/gfx/overlay_blue.png"),
	6: preload("res://src/gfx/overlay_purple.png"),
	7: preload("res://src/gfx/overlay_white.png"),
	8: preload("res://src/gfx/overlay_brown.png"),
	9: preload("res://src/gfx/overlay_pink.png")
}

# Called when the node enters the scene tree for the first time.
func _ready():
	update_texture()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func get_team():
	return team
	# maybe make a dict for this?
	
func set_team(input_team):
	team = input_team
	print(team)
	update_texture()
	
func update_texture():
	%Overlay.set_texture(team_to_colour[team])
