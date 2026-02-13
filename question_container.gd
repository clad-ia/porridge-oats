extends BoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_question(selectedQuestion: Variant) -> void:
	
	var question = selectedQuestion[0]
	print(question)
	$Question.text = question
	
	pass # Replace with function body.
