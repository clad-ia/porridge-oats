extends Sprite2D
signal changeConfidence(confidenceChange)

var aura = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _change_aura(auraChange: Variant) -> void:
	
	aura = aura + auraChange
	
	if aura > 50:
		aura = 50
		
	scale.y = (0.04*aura)
	
	if aura <= 0:
		emit_signal("changeConfidence", aura)
		_reset_aura()
		
	auraChange = 0
	pass # Replace with function body.


func _reset_aura() -> void:
	aura = 0
	scale.y = 0
	pass # Replace with function body.
