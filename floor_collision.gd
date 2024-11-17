extends Area2D

var stored_winner = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _on_body_entered(body):
	var winner = $"../winner"
	print(body)
	if winner.texture == null and body is not StaticBody2D:
		winner.texture = winner.teampics[body.get_team()]
		stored_winner = body.get_team()

	
