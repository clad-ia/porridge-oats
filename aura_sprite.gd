extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _change_aura(auraChange: Variant) -> void:
	
	scale.y = (scale.y + (0.02 * auraChange))
	
	if scale.y > 1:
		scale.y = 1
	
	pass # Replace with function body.
