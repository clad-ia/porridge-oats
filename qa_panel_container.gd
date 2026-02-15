extends PanelContainer
signal questionText(selectedQuestion)
signal response(questionResponse)
signal continuePressed()
signal increaseConnection(connectionGain)
signal changeConfidence(confidenceChange)
signal getEmotion(emotion)
signal npcTalk

var QuestionArray = [
		#Sharktopus Questions
		[
			["What do you like about the beach?", "I love how relaxing it is", "I love going swimming", "I’m not a big fan","-5","-5","-20"],
			["Do you enjoy reading?", "I can’t read", "It’s alright", "I’m a big fan","-20","-10","-5"],
			["Are you a fan of coconuts", "Not my favourite", "They’re yummers", "Eww, no","-10","-5","-20"],
			["What’s your favourite song?", "Laufey", "Lofi Beats to Study to", "Simsonwave", "-5", "-10", "-20"],
			["What movie made you cry the hardest?", "American Psycho", "Ferdinand", "Marley and me", "-20", "-10", "-5"],
			["How would you like to spend your ideal Sunday", "Go to the cinema", "Stay at home and read", "Go for a walk", "-10", "-5", "-5"]
		],

		#Pteracuda Questions
		[
			["Have you watched Wolf of Wall Street", "About 7 times", "A few years ago, yeah", "No, I haven’t","-5","-10","-20"],
			["What’s your favourite song", "Cake by the Ocean", "Where is my mind?", "The Chain","-20","-5","-10"],
			["What’s your go-to drink?", "Vodka Monster", "50 beers", "Any wine haha","-5","-10","-20"],
			["Which Jake Gyllenhaal character are you?", "Jack Twist", "Lou Bloom", "Donnie Darko","-20","-5","-10"],
			["Did you get bullied as a child?", "yeah :(", "no fatty fat chud", "i bully","-20","-5","-10"],
			["I give you £20, what do you buy", "Buy food for my family", "Pay bill", "Invest in Crypto", "-20", "-20", "-5"],
			["How healthy is your investment portfolio", "my what?", "diverse and flourishing", "I put it all in Tesla", "-20", "-5", "-10"],
			["What is your net worth", "6 figures", "a whole lotta dollar", "I’m a broke ass bitch", "-5", "-10", "-20"],
		],

		#WhaleWolf Questions
		[
			["What’s your gym routine", "Rhoids", "all day every day", "I’m so big and heavy","-10","-5","-20"],
			["Favourite song?", "Troublemaker", "Shape of You", "A Sky Full of Stars","-10","-20","-5"],
			["What’s your favourite show", "Tipping Point", "The Office", "Rick and Morty","-5","-10","-20"],
			["What’s your abo status", "Alpha", "Beta", "Omega", "-20", "-10", "-5"],
			["What’s your dream job?", "onlyfans", "business owner", "whaler", "-10", "-5", "-20"],
			["How much can you bench?", "1?? mayhaps", "1 million", "220", "-10", "-20", "-5"]
		],

		#Bearahnna Questions
		[
			["Metric or Imperial", "i want you", "Imperial", "Metric","-10","-5","-20"],
			["Favourite fish", "yellowfin tuna", "big fish", "salmon","-5","-5","-5"],
			["Guns?", "nooooo", "yes yes yes!!!!", "id let u bear my arms big boy","-20","-5","-5"],
			["Car?", "im a fat chud and cant drive", "fiat 500", "i luh my truck", "-10", "-20", "-5"],
			["Beer?", "ouughh im so big and full of beer", "piss juice", "beer? i hardly know her!!!", "-5", "-20", "-10"], 
			["Can you change a tire by yourself", "I’ll just google it", "Hell yeah!", "I’m willing to learn", "-20", "-5", "-5"]
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

	visible = true
	var on = true
	_toggle_buttons(on)
	
	# selects random question
	var selectedCharacter = QuestionArray[character]
	selectedQuestion = selectedCharacter[randi_range(0,(selectedCharacter.size()-1))]

	# sends to answer and question container
	emit_signal("questionText", selectedQuestion)
	emit_signal("npcTalk")

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
	#selectedQuestion = _question(-1)
	
	# get value
	var answerValue = (int)(selectedQuestion[(3+buttonPressed)])
	var answerResponse = ""
	
	# send confidence to sprite
	var confidenceChange = answerValue
	emit_signal("changeConfidence", confidenceChange)
	
	# send connection to sprite
	var connectionGain = answerValue + 20
	emit_signal("increaseConnection", connectionGain)
	
	# finds response to value
	if (answerValue == -20):
		answerResponse = "Blunder"
		emit_signal("getEmotion", 4)
	elif (answerValue == -10):
		answerResponse = "Hmm"
		emit_signal("getEmotion", 0)
	else:
		answerResponse = "Yippee"
		emit_signal("getEmotion",2)
		
	# show continue button
	$QAMarginContainer/ContinueContainer.visible = true
	
	# send response to question button
	emit_signal("response", answerResponse)
	
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
	
	emit_signal("continuePressed")
	pass # Replace with function body.
