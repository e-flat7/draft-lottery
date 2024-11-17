extends Node2D

var teampics = {
	1: preload("res://src/gfx/teamimgs/QUE.png"),
	2: preload("res://src/gfx/teamimgs/SJS.png"),
	3: preload("res://src/gfx/teamimgs/STL.png"),
	4: preload("res://src/gfx/teamimgs/TOR.png"),
	5: preload("res://src/gfx/teamimgs/TRL.png"),
	6: preload("res://src/gfx/teamimgs/VGK.png"),
	7: preload("res://src/gfx/teamimgs/WIC.png"),
	8: preload("res://src/gfx/teamimgs/WSH.png"),
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
