extends Sprite2D
signal dateLost()
var confidence = 50
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _change_confidence(confidenceChange: Variant) -> void:
	
	confidence = confidence + confidenceChange
	
	if confidence > 50:
		confidence = 50
	
	if (confidence < 0):
		emit_signal("dateLost")
	
	scale.y = (0.02*confidence)
	
	confidenceChange = 0
	pass # Replace with function body.
