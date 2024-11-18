extends StaticBody2D

@export var spin_factor = 1
@export var size_factor: Vector2 = Vector2(0.05,0.05)
var click: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotation += spin_factor * delta
	if click:
		if self.scale > Vector2(0.4,0.4):
			self.scale -= size_factor * delta
	if Input.is_action_pressed("click"):
		#spin = 0
		click = true
		$holewedge.disabled = true
		$escapernet.disabled = true
		%Hexaogon.texture = preload("res://src/gfx/2hexagone.png")

func reset():
	#spin = 5
	self.rotation = 0
	click = false
	self.scale = Vector2(1,1)
	$holewedge.disabled = false
	$escapernet.disabled = false
	%Hexaogon.texture = preload("res://src/gfx/2hexagon.png")
