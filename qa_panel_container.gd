extends PanelContainer
signal question(selectedQuestion)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var selectionMade = false
	
	var QuestionArray = [
		#Sharktopus Questions
		[
			["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
			["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
			["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
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
	
	var selectedCharacter = QuestionArray[randi_range(0,5)]
	print(selectedCharacter)
	
	var selectedQuestion = selectedCharacter[randi_range(0,2)]
	print(selectedQuestion)

	emit_signal("question", selectedQuestion)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _hide_buttons(buttonPressed) -> void:
	$MarginContainer/AnswerContainer/AnswerButton1.visible = false
	$MarginContainer/AnswerContainer/AnswerButton2.visible = false
	$MarginContainer/AnswerContainer/AnswerButton3.visible = false
	
	#$Question.text = selectedQuestion[(3 + buttonPressed)]

func _on_answer_button_1_pressed() -> void:
	var buttonPressed = 1
	_hide_buttons(buttonPressed)
	pass # Replace with function body.


func _on_answer_button_2_pressed() -> void:
	var buttonPressed = 2
	_hide_buttons(buttonPressed)
	pass # Replace with function body.


func _on_answer_button_3_pressed() -> void:
	var buttonPressed = 3
	_hide_buttons(buttonPressed)
	pass # Replace with function body.
