extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotation += 5 * delta
	if Input.is_action_pressed("click"):
		%"the one that will be gone".disabled = true
		%Hexaogon.texture = preload("res://src/gfx/hexa-gone.png")

func reset():
	self.rotation = 0
	%"the one that will be gone".disabled = false
	%Hexaogon.texture = preload("res://src/gfx/hexaogon.png")
