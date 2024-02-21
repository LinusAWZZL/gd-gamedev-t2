extends CanvasLayer

onready var title = $PanelContainer/MarginContainer/Rows/Title
var lastLevel = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_title(titleText: String):
	title.text = titleText

func _on_Next_Level_pressed():
	if (int(get_tree().current_scene.name) < lastLevel):
		get_tree().paused = false
		get_tree().change_scene("res://levels/Level"+ str(int(get_tree().current_scene.name) + 1) + ".tscn")
	else:
		get_tree().quit()


func _on_Restart_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://levels/Level"+ str(int(get_tree().current_scene.name)) + ".tscn")


func _on_Quit_pressed():
	get_tree().quit()
