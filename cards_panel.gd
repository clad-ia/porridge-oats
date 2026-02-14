extends Panel

var card_compliment = preload("res://textures/card_compliment.png")
#var car_funstory_image


var allCards = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image", "location"],
	["Compliment", "1", "5", "0", "0", "basic",card_compliment, " "],
	["Fun Story", "1", "0", "5", "0", "basic", " ", " "],
	["Cool Story", "1", "0", "10", "0", "basic", " "," "],
	["Get Socials", "2", "5", "5", "5", "basic", " ", " "],
	["Bold Festure", "2", "0", "15", "0", "basic", " ", " "],
	["Make a move", "3", "20", "0", "10", "basic",  " ", " "],
	]
	


#create the card deck
var cardDeck = [
	
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image"],
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image"],
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

	pass # Replace with function body.

func _load_shop_cards():
	# shop cards
	
	# card 1
	var card_1_chosen = allCards[1]
	#var tex_1 = ImageTexture.new()
	#tex_1.create_from_image(card_compliment)
	
	$CardShopPanel/CardShopContainer/Card1Shop.texture_normal = card_compliment

	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
