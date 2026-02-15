extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_cards_panel_update_energy(energyChange: Variant) -> void:
	$TpLabel.text = (str(energyChange) + "/3")
	pass # Replace with function body.
