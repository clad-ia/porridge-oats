extends Sprite2D
signal dateLost()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _change_confidence(confidenceChange: Variant) -> void:
	
	scale.y = (scale.y + (0.02 * confidenceChange))
	
	if scale.y > 1:
		scale.y = 1
	
	if (scale.y < 0):
		emit_signal("dateLost")
	
	pass # Replace with function body.
