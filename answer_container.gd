extends BoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_new_answers(selectedQuestion: Variant) -> void:
	
	var answer1 = selectedQuestion[1]
	print(answer1)
	$AnswerButton1.text = answer1
	
	var answer2 = selectedQuestion[2]
	print(answer2)
	$AnswerButton2.text = answer2
	
	var answer3 = selectedQuestion[3]
	print(answer3)
	$AnswerButton3.text = answer3
	
	pass # Replace with function body.
