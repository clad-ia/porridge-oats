extends Control
signal question(character)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var character = 0
	emit_signal("question", character)
	pass # Replace with function body.

func _continue_pressed():
	var character = 0
	emit_signal("question", character)
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
