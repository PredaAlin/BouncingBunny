extends Control



func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level3.tscn")


func _on_MenuButton_pressed():
	get_tree().change_scene("res://Scenes/LevelsMenu.tscn")
