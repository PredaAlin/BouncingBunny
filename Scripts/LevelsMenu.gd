extends Control




func _on_Level1Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level3.tscn")


func _on_Level2Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level4.tscn")


func _on_Level3Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")


func _on_Level4Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level2.tscn")


func _on_Level5Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level5.tscn")


func _on_Level6Button_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level6.tscn")
