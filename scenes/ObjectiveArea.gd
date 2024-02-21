extends Area2D
#var simultaneous_scene = preload("res://levels/level1.tscn").instantiate()
const MenuOverlay = preload("res://scenes/MenuOverlay.tscn")

var win = false
#func _ready():
#	get_tree().root.add_child(simultaneous_scene)

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Take Off!")
		#get_tree().change_scene("res://levels/Level1.tscn")
		var menu = MenuOverlay.instance()
		add_child(menu)
		menu.set_title("You Win!!!")
		get_tree().paused = true

#func getWin():
#	win = true
