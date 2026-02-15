extends PointLight2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	energy = 1.40
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (energy >= 1.4):
		energy -= 0.0005
	else:
		energy =+ 0.0005
	pass
