extends Area2D

func _on_ObjectiveArea_body_entered(body: KinematicBody2D):
	if (body.name == "WhiteShip"):
		print("Landed!")
