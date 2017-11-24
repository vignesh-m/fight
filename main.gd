extends Node2D

func _ready():
	set_process(true)

const SPEED = 100
func _process(delta):
	var guy1_pos = get_node('guy1').get_pos()
	var guy2_pos = get_node('guy2').get_pos()
	
	if Input.is_action_pressed("left_1"):
		guy1_pos.x = guy1_pos.x - SPEED*delta
	if Input.is_action_pressed("right_1"):
		guy1_pos.x = guy1_pos.x + SPEED*delta
	if Input.is_action_pressed("left_2"):
		guy2_pos.x = guy2_pos.x - SPEED*delta
	if Input.is_action_pressed("right_2"):
		guy2_pos.x = guy2_pos.x + SPEED*delta
		
	get_node('guy1').set_pos(guy1_pos)
	get_node('guy2').set_pos(guy2_pos)