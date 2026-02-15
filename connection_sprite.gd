extends Sprite2D
signal dateWon()
signal _end_button_pressed(won)

var connection = 0
var connectionDifficulty = 0.02
var won = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _increase_connection(connectionGain: Variant) -> void:
	
	connection = connection + connectionGain
	
	scale.y = (connectionDifficulty * connection)
	if (connection > 50):
		emit_signal("dateWon")
		
	pass # Replace with function body.


func _end_turn_button_pressed() -> void:
	
	emit_signal("_end_button_pressed", won)
	pass # Replace with function body.


func _reset_connection() -> void:
	scale.y = 0
	connection = 0
	pass # Replace with function body.
