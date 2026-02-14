extends Panel

var card_compliment_image = preload("res://textures/card_compliment.png")
var card_funstory_image = preload("res://textures/card_compliment.png")
var card_coolstory_image = preload("res://textures/card_compliment.png")
var card_getsocials_image = preload("res://textures/card_compliment.png")
var card_boldgesture_image = preload("res://textures/card_compliment.png")
var card_makeamove_image = preload("res://textures/card_compliment.png")


var allCards = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image", "location"],
	["Compliment", "1", "5", "0", "0", "basic",card_compliment_image, " "],
	["Fun Story", "1", "0", "5", "0", "basic", card_funstory_image, " "],
	["Cool Story", "1", "0", "10", "0", "basic", card_coolstory_image," "],
	["Get Socials", "2", "5", "5", "5", "basic", card_getsocials_image, " "],
	["Bold Gesture", "2", "0", "15", "0", "basic", card_boldgesture_image, " "],
	["Make a move", "3", "20", "0", "10", "basic",  card_makeamove_image, " "],
	]
	

#create the player's deck
var cardDeck = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image", "location"],
]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# build cardDeck
	for i in range(3):
		cardDeck.append(allCards[1])
		cardDeck.append(allCards[2])
		cardDeck.append(allCards[3])
	
	cardDeck.append(allCards[4])
	cardDeck.append(allCards[5])
	cardDeck.append(allCards[6])
	
	pass # Replace with function body.

# function for adding and getting the card deck
func _card_deck(newCard):
	
	# adds a new card to the deck
	if newCard != null:
		cardDeck.append(newCard)

	pass # Replace with function body.

func _load_shop_cards():
	
	# shop cards
	# card 1
	var card_1_chosen = allCards[1]
	$CardShopPanel/CardShopContainer/Card1Shop.texture_normal = card_1_chosen[6]
	
	# card 2
	var card_2_chosen = allCards[2]
	$CardShopPanel/CardShopContainer/Card2Shop.texture_normal = card_2_chosen[6]
	
	# card 3
	var card_3_chosen = allCards[3]
	$CardShopPanel/CardShopContainer/Card3Shop.texture_normal = card_3_chosen[6]
	
	pass
	
func _load_deck_cards():
	
	# shop cards
	# card 1
	var card_1_chosen = cardDeck[1]
	$CardContainer/Card.texture_normal = card_1_chosen[6]
	
	# card 2
	var card_2_chosen = cardDeck[2]
	$CardContainer/Card.texture_normal = card_2_chosen[6]
	
	# card 3
	var card_3_chosen = cardDeck[3]
	$CardContainer/Card.texture_normal = card_3_chosen[6]
	
	# card 4
	var card_4_chosen = cardDeck[4]
	$CardContainer/Card.texture_normal = card_3_chosen[6]
	
	# card 5
	var card_5_chosen = cardDeck[5]
	$CardContainer/Card.texture_normal = card_3_chosen[6]
	
	pass

func _card_1_shop_pressed() -> void:
	print(cardDeck)
	pass # Replace with function body.

func _card_2_shop_pressed() -> void:
	pass # Replace with function body.


func _card_3_shop_pressed() -> void:
	pass # Replace with function body.
