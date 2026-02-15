extends Control
signal question(character)
signal loadShopCards()
signal loadDeckCards()
signal resetAura()
signal completeDate(selectedCharacter)

var character = 0
var selectedCharacter = ["Id", "Name", "Description", "Name", "Succesful Dates"]

func _start_date(selectedCharacter: Variant) -> void:
	
	character = int(selectedCharacter[0])
	selectedCharacter = selectedCharacter
	visible = true
	$CanvasLayer.visible = true
	_ready()
	pass # Replace with function body.func _switch_screens_back(dateWon) -> void:
	
	# HI DREW!!!!!
	# DO THIS!!!!!!!
	
	# drew....
	# where did you go....
	
	#hide UI
	$CanvasLayer/ConnectionPanelContainer.visible = false
	$CanvasLayer/ConfidencePanelContainer.visible = false
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/CardsPanel.visible = false
	$DatePanel.visible = false
	$CanvasLayer/TpPanelContainer.visible = false
	$CanvasLayer/EndTurnPanelContainer.visible = false
	
	selectedCharacter[4] = selectedCharacter[4] + 1
	
	emit_signal("completeDate", selectedCharacter)
	
	pass
	
func _switch_screens_back(dateWon) -> void:
	
	# HI DREW!!!!!
	# DO THIS!!!!!!!
	
	# drew....
	# where did you go....
	
	#hide UI
	$CanvasLayer/ConnectionPanelContainer.visible = false
	$CanvasLayer/ConfidencePanelContainer.visible = false
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/CardsPanel.visible = false
	$DatePanel.visible = false
	$CanvasLayer/TpPanelContainer.visible = false
	$CanvasLayer/EndTurnPanelContainer.visible = false
	
	selectedCharacter[4] = selectedCharacter[4] + 1
	
	emit_signal("completeDate", selectedCharacter)
	
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	emit_signal("resetAura")
	emit_signal("question", character)
	$CanvasLayer/CardsPanel.visible = false
	$CanvasLayer/CardsPanel/CardContainer.visible = false
	$CanvasLayer/ConnectionPanelContainer.visible = true
	$CanvasLayer/ConfidencePanelContainer.visible = true
	$CanvasLayer/QAPanelContainer.visible = true
	$CanvasLayer/CardsPanel/CardShopPanel.visible = false
	$DatePanel.visible = true
	$SettingPanel.visible = true
	$CanvasLayer/QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	$CanvasLayer/TpPanelContainer.visible = false
	$CanvasLayer/EndTurnPanelContainer.visible = false
	pass # Replace with function body.

func _continue_pressed():

	$CanvasLayer/QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/CardsPanel.visible = true
	$CanvasLayer/CardsPanel/CardContainer.visible = true
	$CanvasLayer/TpPanelContainer.visible = true
	$CanvasLayer/EndTurnPanelContainer.visible = true
	
	emit_signal("loadDeckCards")
	
	pass # Replace with functin body.

func _date_won() -> void:
	
	emit_signal("loadShopCards")
	
	$CanvasLayer/CardsPanel/CardContainer.visible = false
	$CanvasLayer/ConnectionPanelContainer.visible = false
	$CanvasLayer/ConfidencePanelContainer.visible = false
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/CardsPanel/CardShopPanel.visible = true
	$DatePanel.visible = false
	$SettingPanel.visible = false

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


func _end_turn_button_pressed() -> void:
	
	_ready()
	
	pass # Replace with function body.
