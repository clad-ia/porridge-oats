extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _increase_connection(connectionGain: Variant) -> void:
	var connectionDifficulty = 0.02
	scale.y = (scale.y + (connectionDifficulty * connectionGain))
	pass # Replace with function body.
