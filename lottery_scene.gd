extends Node2D

var ball_scene = preload("res://ball.tscn")
var balls = []
var num_of_teams = 9
var teamlist = [1, 2, 3, 4, 5, 6, 7 , 8, 9]

# Called when the node enters the scene tree for the first time.
func _ready():
	Engine.time_scale = 0.5
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
			bal.position.x = 360 + (randi() % 128) - 32
			bal.position.y = 600 + (randi() % 128) - 32


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
			if num_of_teams <= 0:
				num_of_teams = 9
				teamlist = [1, 2, 3, 4, 5, 6, 7 ,8, 9]
		ball_spawn(num_of_teams)
		$roller.reset()
		$winner.texture = null
			
