extends PanelContainer
signal question(selectedQuestion)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var QuestionArray = [
	["Question1", "Answer11", "Answer12", "Answer13","Answer1Value","Answer2Value","Answer3Value"],
	["Question2", "Answer21", "Answer22", "Answer23","Answer1Value","Answer2Value","Answer3Value"],
	["Question3", "Answer31", "Answer32", "Answer33","Answer1Value","Answer2Value","Answer3Value"]
	]
	
	var selectedQuestion = QuestionArray[randi_range(0,2)]
	print(selectedQuestion)

	emit_signal("question", selectedQuestion)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
