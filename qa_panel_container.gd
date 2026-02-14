extends PanelContainer
signal questionText(selectedQuestion)
signal response(questionResponse)
signal continuePressed()
signal increaseConnection(connectionGain)

var QuestionArray = [
		#Sharktopus Questions
		[
			["What do you like about the beach?", "I love how relaxing it is", "I love going swimming", "I’m not a big fan","-5","-5","-20"],
			["Do you enjoy reading?", "I can’t read", "It’s alright", "I’m a big fan","-20","-10","-5"],
			["Are you a fan of coconuts", "Not my favourite", "They’re yummers", "Eww, no","-10","-5","-20"]
		],
		#Pteracuda Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
		],
		#WhaleWolf Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
		],
		#Bearahnna Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
		],
		#Kininja Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
		],
		#Velocipastor Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
		],
	]

var selectedQuestion = ["Question!", "Answer 1 (Blunder)", "Answer 2 (Meh)", "Answer 3 (Yippee)","-20","-10","-5"]
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	emit_signal("questionText", selectedQuestion)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# recieves the selected character
func _character_selected(character: Variant) -> void:
	_question(character)
	pass

# selects question, or gets seletected question
func _question(character: Variant):
	
	# character int -1 = get question
	# character int 0-5 = set question
	
	var selectionMade = false
	
	
	if character != -1:
		
		visible = true
		var on = true
		_toggle_buttons(on)
		
		# selects random question
		var selectedCharacter = QuestionArray[character]
		selectedQuestion = selectedCharacter[randi_range(0,2)]

		# sends to answer and question container
		emit_signal("questionText", selectedQuestion)
		
	# returns selected Question
	else:
	
		return selectedQuestion
	
	pass # Replace with function body.
	
# toggles buttons
func _toggle_buttons(on) -> void:
	$QAMarginContainer/AnswerContainer/AnswerButton1.visible = on
	$QAMarginContainer/AnswerContainer/AnswerButton2.visible = on
	$QAMarginContainer/AnswerContainer/AnswerButton3.visible = on
	pass # Replace with function body.
	
# finds the value of the answer selected
func _answer_selected(buttonPressed) -> void:
	var on = false
	_toggle_buttons(on)

	# gets question
	selectedQuestion = _question(-1)
	
	# get value
	var answerValue = (int)(selectedQuestion[(3+buttonPressed)])
	var answerResponse = ""
	
	# send value to date scene
	var connectionGain = answerValue + 20
	emit_signal("increaseConnection", connectionGain)
	
	# finds response to value
	if (answerValue == -20):
		answerResponse = "Blunder"
	elif (answerValue == -10):
		answerResponse = "Hmm"
	else:
		answerResponse = "Yippee"
	
	# send response to question button
	emit_signal("response", answerResponse)
	
	
	# show continue button
	$QAMarginContainer/ContinueContainer/ContinueButton.visible = true

# buttons pressed
func _on_answer_button_1_pressed() -> void:
	var buttonPressed = 1
	_answer_selected(buttonPressed)
	pass # Replace with function body.


func _on_answer_button_2_pressed() -> void:
	var buttonPressed = 2
	_answer_selected(buttonPressed)
	pass # Replace with function body.


func _on_answer_button_3_pressed() -> void:
	var buttonPressed = 3
	_answer_selected(buttonPressed)
	pass # Replace with function body.


func _on_continue_button_pressed() -> void:
	# hide continute button
	$QAMarginContainer/ContinueContainer/ContinueButton.visible = false
	visible = false
	
	emit_signal("continuePressed")
	pass # Replace with function body.
