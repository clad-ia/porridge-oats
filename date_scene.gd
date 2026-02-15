extends Control
signal question(character)
signal loadShopCards()
signal loadDeckCards()
signal resetAura()
signal resetConnection()
signal completeDate(selectedCharacter)
signal createIntent()

var character = 0
var selectedCharacter = ["Id", "Name", "Description", "Name", "Succesful Dates"]
var won = false

func _start_date(selectedCharacter: Variant) -> void:
	
	character = int(selectedCharacter[0])
	selectedCharacter = selectedCharacter
	won = false
	
	var date = $DatePanel/DateContainer/DateSprite2
	date.speed_scale = 0
	
	$shopTheme.stop()
	$mainTheme.stop()
	$sharktopusTheme.stop()
	$pteracudaTheme.stop()
	$whalewolfTheme.stop()
	$bearanhaTheme.stop()
	
	if (character == 0):
		date.play("sharktopus")
		$sharktopusTheme.play()
	elif (character == 1):
		date.play("pteracuda")
		$pteracudaTheme.play()
	elif (character == 2):
		date.play("whalewolf")
		$whalewolfTheme.play()
	else:
		date.play("bearanha")
		$bearanhaTheme.play()
	
	visible = true
	$CanvasLayer.visible = true
	$CanvasLayer/ConnectionPanelContainer.visible = true
	$CanvasLayer/ConfidencePanelContainer.visible = true
	_load_question()
	pass # Replace with function body.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _load_nodes(section):
	
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/QAPanelContainer/QAMarginContainer/QuestionContainer.visible = false
	$CanvasLayer/QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	$CanvasLayer/TpPanelContainer.visible = false
	$CanvasLayer/EndTurnPanelContainer.visible = false
	$CanvasLayer/QAPanelContainer/QAMarginContainer/ContinueContainer.visible = false
	$CanvasLayer/CardsPanel.visible = false
	$CanvasLayer/CardsPanel/CardContainer.visible = false
	$DatePanel/IntentTexture.visible = false
	

	if won != true:
		if section == "question":
			$CanvasLayer/QAPanelContainer.visible = true
			$CanvasLayer/QAPanelContainer/QAMarginContainer/QuestionContainer.visible = true
			$CanvasLayer/QAPanelContainer/QAMarginContainer/AnswerContainer.visible = true
		elif section == "response":
			$CanvasLayer/QAPanelContainer.visible = true
			$CanvasLayer/QAPanelContainer/QAMarginContainer/QuestionContainer.visible = true
			$CanvasLayer/QAPanelContainer/QAMarginContainer/ContinueContainer.visible = true
		elif section == "cards":
			$DatePanel/IntentTexture.visible = true
			$CanvasLayer/TpPanelContainer.visible = true
			$CanvasLayer/EndTurnPanelContainer.visible = true
			$CanvasLayer/CardsPanel.visible = true
			$CanvasLayer/CardsPanel/CardContainer.visible = true
	else:
		$shopTheme.play()
		$mainTheme.stop()
		$sharktopusTheme.stop()
		$pteracudaTheme.stop()
		$whalewolfTheme.stop()
		$bearanhaTheme.stop()
		
		$CanvasLayer/CardsPanel.visible = true
		$CanvasLayer/CardsPanel/CardShopPanel.visible = true
		print("agagaga")
		emit_signal("loadShopCards")
		pass
	
func _load_question():
	
	_load_nodes("question")
	emit_signal("resetAura")
	emit_signal("question", character)
	$DatePanel.visible = true
	$SettingPanel.visible = true
	pass
	
func _continue_pressed():

	_load_nodes("cards")
	emit_signal("loadDeckCards")
	emit_signal("createIntent")
	
	pass # Replace with functin body.

func _end_turn_button_pressed(won) -> void:
	
	_load_question()
	
	pass # Replace with function body.
	
func _date_won() -> void:
	won = true
	_load_nodes("won")
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
	
	# drew....
	# where did you go....

	#hide UI
	$CanvasLayer/ConnectionPanelContainer.visible = false
	$CanvasLayer/ConfidencePanelContainer.visible = false
	$CanvasLayer/QAPanelContainer.visible = false
	$CanvasLayer/CardsPanel.visible = false
	$CanvasLayer/CardsPanel/CardShopPanel.visible = false
	$DatePanel.visible = false
	$CanvasLayer/TpPanelContainer.visible = false
	$CanvasLayer/EndTurnPanelContainer.visible = false
	$CanvasLayer.visible = false
	
	won = false
	emit_signal("resetConnection")
	
	selectedCharacter[4] = int(selectedCharacter[4]) + 1
	
	emit_signal("completeDate", selectedCharacter)
	
	pass
