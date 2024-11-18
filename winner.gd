extends Node2D

var teampics = {
	1: preload("res://src/gfx/teamimgs/17.png"),
	2: preload("res://src/gfx/teamimgs/18.png"),
	3: preload("res://src/gfx/teamimgs/19.png"),
	4: preload("res://src/gfx/teamimgs/20.png"),
	5: preload("res://src/gfx/teamimgs/21.png"),
	6: preload("res://src/gfx/teamimgs/22.png"),
	7: preload("res://src/gfx/teamimgs/23.png"),
	8: preload("res://src/gfx/teamimgs/24.png"),
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_floor_body_entered(body):
	if $".".texture == null:
		print(body)
		#$".".texture = teams[body.get_team()]
