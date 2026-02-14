extends Control
signal question(character)
signal loadShopCards()
signal loadDeckCards()

var character = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	emit_signal("question", character)
	$CardsPanel.visible = false
	$CardsPanel/CardContainer.visible = false
	$ConnectionPanelContainer.visible = true
	$ConfidencePanelContainer.visible = true
	$QAPanelContainer.visible = true
	$CardsPanel/CardShopPanel.visible = false
	$DatePanel.visible = true
	$TableContainer.visible = true
	$QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	pass # Replace with function body.

func _continue_pressed():

	$QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	$QAPanelContainer.visible = false
	$CardsPanel.visible = true
	$CardsPanel/CardContainer.visible = true
	
	emit_signal("loadDeckCards")
	
	pass # Replace with functioemit_signal("question", character)n body.

func _date_won() -> void:
	var on = true
	emit_signal("loadShopCards")
	
	$CardsPanel/CardContainer.visible = false
	$ConnectionPanelContainer.visible = false
	$ConfidencePanelContainer.visible = false
	$QAPanelContainer.visible = false
	$CardsPanel/CardShopPanel.visible = true
	$DatePanel.visible = false
	$TableContainer.visible = false

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
	$QAPanelContainer.visible = false
	$CardsPanel.visible = false
	$DatePanel.visible = false
	$TableContainer.visible = false
	
	print(dateWon)
	
	
	
	
	
