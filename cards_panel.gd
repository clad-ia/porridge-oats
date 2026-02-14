extends Panel

#create the card deck
var cardDeck = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type"],
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type"],
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type"],
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var newCard = ["New Card name", "Tp", "Connection", "Confidence", "Aura", "Type"]
	_card_deck(null)
	_card_deck(newCard)
	
	pass # Replace with function body.

# function for adding and getting the card deck
func _card_deck(newCard):
	
	if newCard != null:
		cardDeck.append(newCard)
	
	print(cardDeck)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
