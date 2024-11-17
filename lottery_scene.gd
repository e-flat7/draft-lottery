extends Node2D

var ball_scene = preload("res://ball.tscn")
var balls = []
var num_of_teams = 8

# Called when the node enters the scene tree for the first time.
func _ready():
	var cur_team = 1
	var count = 0
	var subballs = []
	@warning_ignore("integer_division")
	var num_of_balls = (num_of_teams) * (num_of_teams + 1) / 2
	for i in range(num_of_balls):
		print(cur_team)
		var balll = ball_scene.instantiate()
		balll.set_team(cur_team)
		add_child(balll)
		subballs.append(balll)
		count += 1
		if count >= cur_team:
			print("yea")
			count = 0
			cur_team += 1
			balls.append(subballs)
			subballs = []
	for ball in balls:
		for bal in ball:
			bal.position.x = 960
			bal.position.y = 829


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	for ball in balls:
#		for bal in ball:
#			print(bal.transform)
