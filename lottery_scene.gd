extends Node2D

var ball_scene = preload("res://ball.tscn")
var balls = []
var num_of_teams = 8
var teamlist = [1, 2, 3, 4, 5, 6, 7 ,8]

# Called when the node enters the scene tree for the first time.
func _ready():
	ball_spawn(num_of_teams)
			
			
func ball_spawn(teams_remaining):
	var subballs = []
	@warning_ignore("integer_division")
	for teamnum in teamlist:
		for i in range(teamnum):
			var balll = ball_scene.instantiate()
			balll.set_team(teamnum)
			add_child(balll)
			subballs.append(balll)
		balls.append(subballs)
		subballs = []
	for ball in balls:
		for bal in ball:
			bal.position.x = 960
			bal.position.y = 300


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("reset"):
		#deletin bals
		for ball in balls:
			for bal in ball:
				if bal != null:
					print(bal)
					bal.queue_free()
					bal = null
				else:
					print("aha")
		balls = []
		#reballin, one less this time if we had a winner, which we remove from the list
		if $floor.stored_winner != -1:
			teamlist.erase($floor.stored_winner)
			$floor.stored_winner = -1
			num_of_teams -= 1
			if num_of_teams < 0:
				num_of_teams = 8
				teamlist = [1, 2, 3, 4, 5, 6, 7 ,8]
		ball_spawn(num_of_teams)
		$roller.reset()
		$winner.texture = null
			
