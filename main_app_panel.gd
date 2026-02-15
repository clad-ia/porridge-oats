extends Panel
signal startDate(selectedCharacter)

var image_sharktopus = preload("res://Sprite PNGs/Icons/sharktopus_icon.png")
var image_pteracuda = preload("res://Sprite PNGs/Icons/pteracuda_icon.png")
var image_whalewolf = preload("res://Sprite PNGs/Icons/whalewolf_icon.png")
var image_bearahna = preload("res://Sprite PNGs/Icons/bearanha-icon.png")
var image_kininja = preload("res://Sprite PNGs/Icons/ninja-icon.png")
var image_velocipastor = preload("res://Sprite PNGs/Icons/velocipastor_icon.png")

var characterProfiles = [
	["Id", "Name", "Description", "Name", "Succesful Dates"],
	["0", "Sharktopus", "Age 22 \nLoves long walks on \nthe beach \nBounty lover", image_sharktopus, 0],
	["1","Pteracuda", "Age 24 \nEntrepreneur \nSon of John Business\nMoney man", image_pteracuda, 0],
	["2","Whalewolf", "Age 23 \nNatty \nI hate chuds \nBenches 230", image_whalewolf, 0],
	["3","Bearahna", "Age 43 \n300lbs of fun! \nAvid fisher \nCarp Connoisseur", image_bearahna, 0],
	["4","Kininja", "Description", image_kininja, 0],
	["5","Velocipastor", "Description", image_velocipastor, 0],
]

var theselectedCharacter = characterProfiles[0]
var characterNumber = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var currentSelectedCharacter = theselectedCharacter

	while (currentSelectedCharacter == theselectedCharacter):
		characterNumber = randi_range(1,4)
		theselectedCharacter = characterProfiles[characterNumber]
	
	_load_character()
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _load_character():
	$AppScreen/VBoxContainer/Icon.texture = theselectedCharacter[3]
	$AppScreen/VBoxContainer/Name.text = theselectedCharacter[1]
	$AppScreen/VBoxContainer/Description.text = theselectedCharacter[2]
	
func _left_arrow_pressed() -> void:
	_ready()
	pass # Replace with function body.

func _right_arrow_pressed() -> void:
	visible = false
	emit_signal("startDate", theselectedCharacter)
	pass # Replace with function body.


func _complete_date(selectedCharacter: Variant) -> void:
	
	theselectedCharacter[4] = selectedCharacter[4]
	visible = true
	
	if theselectedCharacter[4] == 3:
		print(theselectedCharacter[1] + "is your waifu!!!!")
	pass # Replace with function body.
