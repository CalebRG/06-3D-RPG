extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")
var dialogue = [
	"Hey You! (press E to continue)",
	"Legends says that behind this wall, holds a material with so much detail, it'll kill you!",
	"I have never seen something with more than 8 faces, I really want to check it out!",
	"But I can't figure out how to open it, maybe fighting those red men over there might open it?"
]
func _ready():
	$AnimationPlayer.play("CrouchIdle")
	Dialogue.connect("finished_dialogue", self, "finished")
	


func _on_Area_body_entered(_body):
	Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(_body):
	Dialogue.hide_dialogue()
	
