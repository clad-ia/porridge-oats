extends BoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _question_text(selectedQuestion: Variant) -> void:
	
	var questionText = selectedQuestion[0]
	$Question.text = questionText
	
	pass # Replace with function body.

func _on_response(questionResponse: Variant) -> void:
	$Question.text = questionResponse
	pass # Replace with function body.
