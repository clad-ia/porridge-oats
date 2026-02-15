extends Sprite2D
signal dateWon()

var connection = 0
var connectionDifficulty = 0.02

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _increase_connection(connectionGain: Variant) -> void:
	
	connection = connection + connectionGain
	
	scale.y = (connectionDifficulty * connection)
	if (scale.y > 1):
		emit_signal("dateWon")
		
	pass # Replace with function body.
