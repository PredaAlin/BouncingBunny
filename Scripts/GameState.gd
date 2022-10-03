extends Node2D

export var starting_lives = 3
var lives
var coins = 0

onready var GUI = Global.GUI

func _ready():
	Global.GameState = self
	lives = starting_lives
	update_GUI()
	
func update_GUI():
	GUI.update_GUI(coins, lives)
	
func animate_GUI(animation):
	GUI.animate(animation)	
	
func hurt():
	lives -= 1
	Global.Player.hurt()
	animate_GUI("Hurt")
	Global.pain_sfx.play()
	update_GUI()
	if lives < 0:
		end_game()	
	
func coin_up():
	coins += 1
	update_GUI()
	animate_GUI("CoinPulse")
	
func end_game():
	get_tree().change_scene("res://Scenes/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://Scenes/LevelFinished.tscn")	


func _on_Portal_body_entered(body):
	win_game()
