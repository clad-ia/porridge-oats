extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_qa_panel_container_get_emotion(emotion: Variant) -> void:
	frame = emotion
	if (emotion == 2):
		$win.play()
	elif(emotion == 4):
		$loss.play()
	pass # Replace with function body.


func _on_qa_panel_container_npc_talk() -> void:
	frame += 1
	pass # Replace with function body.
