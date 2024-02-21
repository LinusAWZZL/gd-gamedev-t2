extends Area2D
const MenuOverlay = preload("res://scenes/MenuOverlay.tscn")

var win = false

func _on_ObjectiveArea_body_entered(body: KinematicBody2D):
	if (body.name == "GreenShip"):
		print("Beginning Docking!")
		var menu = MenuOverlay.instance()
		add_child(menu)
		menu.set_title("You Win!!!")
		get_tree().paused = true

#func getWin():
#	win = true
	
