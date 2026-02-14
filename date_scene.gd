extends Control
signal question(character)
signal loadShopCards()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var character = 0
	emit_signal("question", character)
	$CardsPanel/CardContainer.visible = true
	$ConnectionPanelContainer.visible = true
	$ConfidencePanelContainer.visible = true
	$DatePanelContainer.visible = true
	$CardsPanel/CardShopPanel.visible = false
	pass # Replace with function body.

func _continue_pressed():
	var character = 0
	emit_signal("question", character)
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _date_won() -> void:
	var on = true
	emit_signal("loadShopCards")
	
	$CardsPanel/CardContainer.visible = false
	$ConnectionPanelContainer.visible = false
	$ConfidencePanelContainer.visible = false
	$DatePanelContainer.visible = false
	$CardsPanel/CardShopPanel.visible = true

	pass # Replace with function body.

func _date_lost() -> void:
	
	#sets dateWon to false and call switch screen
	var dateWon = false
	_switch_screens_back(dateWon)
	pass # Replace with function body.

func _shop_completed() -> void:
	
	# sets date won to true and calls switch screen
	var dateWon = true
	_switch_screens_back(dateWon)
	
	pass # Replace with function body.
	
func _switch_screens_back(dateWon) -> void:
	
	# HI DREW!!!!!
	# DO THIS!!!!!!!
	
	#hide UI
	$ConnectionPanelContainer.visible = false
	$ConfidencePanelContainer.visible = false
	$DatePanelContainer.visible = false
	$CardsPanel.visible = false
	
	print(dateWon)
	
	
	
	
	
