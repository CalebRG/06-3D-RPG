extends Spatial




func _on_Area_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://Player/Win.tscn")
