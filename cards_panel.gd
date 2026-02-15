extends Panel
signal shopCompleted()
signal increaseConnection(connectionGain)
signal changeConfidence(confidenceChange)
signal changeAura(auraChange)
signal updateEnergy(energyChange)

var card_compliment_image = preload("res://card_textures/card_compliment.png")
var card_funstory_image = preload("res://card_textures/card_funstory.png")
var card_coolstory_image = preload("res://card_textures/card_coolstory.png")
var card_getsocials_image = preload("res://card_textures/card_getsocials.png")
var card_boldgesture_image = preload("res://card_textures/card_boldgesture.png")
var card_makeamove_image = preload("res://card_textures/card_makeamove.png")



var allCards = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image", "location"],
	["Compliment", "1", "5", "0", "0", "basic",card_compliment_image, " "],
	["Fun Story", "1", "0", "5", "0", "basic", card_funstory_image, " "],
	["Cool Story", "1", "0", "0", "10", "basic", card_coolstory_image," "],
	["Get Socials", "2", "5", "0", "5", "basic", card_getsocials_image, " "],
	["Bold Gesture", "2", "0", "15", "0", "basic", card_boldgesture_image, " "],
	["Make a move", "3", "20", "0", "10", "basic",  card_makeamove_image, " "],
	]
	

#create the player's deck
var cardDeck = [
	["Card name", "Tp", "Connection", "Confidence", "Aura", "Type", "image", "location"],
]

var card_1_shop = 0
var card_2_shop = 0
var card_3_shop = 0

var card_1_hand = 0
var card_2_hand = 0
var card_3_hand = 0
var card_4_hand = 0
var card_5_hand = 0

var max_energy = 3
var energy = 3

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

func _load_shop_cards():
	
	# shop cards
	# card 1
	var card_1_shop = allCards[randi_range(1,6)]
	$CardShopPanel/CardShopContainer/Card1Shop.texture_normal = card_1_shop[6]
	
	# card 2
	var card_2_shop = allCards[randi_range(1,6)]
	$CardShopPanel/CardShopContainer/Card2Shop.texture_normal = card_2_shop[6]
	
	# card 3
	var card_3_shop = allCards[randi_range(1,6)]
	$CardShopPanel/CardShopContainer/Card3Shop.texture_normal = card_3_shop[6]
	
	pass
	
func _load_deck_cards():
	
	# hand cards
	# card 1
	card_1_hand = cardDeck[randi_range(1,(cardDeck.size()-1))]
	$CardContainer/Card1.texture_normal = card_1_hand[6]
	
	# card 2
	card_2_hand = cardDeck[randi_range(1,(cardDeck.size()-1))]
	$CardContainer/Card2.texture_normal = card_2_hand[6]
	
	# card 3
	card_3_hand = cardDeck[randi_range(1,(cardDeck.size()-1))]
	$CardContainer/Card3.texture_normal = card_3_hand[6]
	
	# card 4
	card_4_hand = cardDeck[randi_range(1,(cardDeck.size()-1))]
	$CardContainer/Card4.texture_normal = card_3_hand[6]
	
	# card 5
	card_5_hand = cardDeck[randi_range(1,(cardDeck.size()-1))]
	$CardContainer/Card5.texture_normal = card_3_hand[6]
	
	pass

func _card_1_shop_pressed() -> void:
	cardDeck.append(card_1_shop)
	emit_signal("shopCompleted")
	pass # Replace with function body.

func _card_2_shop_pressed() -> void:
	cardDeck.append(card_2_shop)
	emit_signal("shopCompleted")
	pass # Replace with function body.

func _card_3_shop_pressed() -> void:
	cardDeck.append(card_3_shop)
	emit_signal("shopCompleted")
	pass # Replace with function body.

func _on_card_1_pressed() -> void:
	_card_played(card_1_hand)
	$CardContainer/Card1.visible = false
	pass # Replace with function body.

func _on_card_2_pressed() -> void:
	_card_played(card_2_hand)
	$CardContainer/Card2.visible = false
	pass # Replace with function body.

func _on_card_3_pressed() -> void:
	_card_played(card_3_hand)
	$CardContainer/Card3.visible = false
	pass # Replace with function body.

func _on_card_4_pressed() -> void:
	_card_played(card_4_hand)
	$CardContainer/Card4.visible = false
	pass # Replace with function body.

func _on_card_5_pressed() -> void:
	_card_played(card_5_hand)
	$CardContainer/Card5.visible = false
	pass # Replace with function body.
	
func _card_played(selectedCard):

	# check theres enough energy
	if int(selectedCard[1]) <= energy:
	
		emit_signal("increaseConnection", int(selectedCard[2]))
		emit_signal("changeConfidence", int(selectedCard[3]))
		emit_signal("changeAura", int(selectedCard[4]))
		
		energy = energy - int(selectedCard[1])
		emit_signal("updateEnergy", energy)
		
	else:
		$Popup.visible = true
		await try_await()
		$Popup.visible = false
	pass

func try_await():
	await get_tree().create_timer(0.5).timeout
