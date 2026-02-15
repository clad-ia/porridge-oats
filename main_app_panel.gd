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
	["0", "Sharktopus", "Description", image_sharktopus, 0],
	["1","Pteracuda", "Description", image_pteracuda, 0],
	["2","Whalewolf", "Description", image_whalewolf, 0],
	["3","Bearahna", "Description", image_bearahna, 0],
	["4","Kininja", "Description", image_kininja, 0],
	["5","Velocipastor", "Description", image_velocipastor, 0],
]

var selectedCharacter = characterProfiles[0]
var characterNumber = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var currentSelectedCharacter = selectedCharacter

	while (currentSelectedCharacter == selectedCharacter):
		characterNumber = randi_range(1,6)
		selectedCharacter = characterProfiles[characterNumber]
	
	_load_character()
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _load_character():
	$AppScreen/VBoxContainer/Icon.texture = selectedCharacter[3]
	$AppScreen/VBoxContainer/Name.text = selectedCharacter[1]
	$AppScreen/VBoxContainer/Description.text = selectedCharacter[2]
	
func _left_arrow_pressed() -> void:
	_ready()
	pass # Replace with function body.

func _right_arrow_pressed() -> void:
	visible = false
	emit_signal("startDate", selectedCharacter)
	pass # Replace with function body.


func _complete_date(selectedCharacter: Variant) -> void:
	
	characterProfiles[characterNumber] = selectedCharacter
	print(characterProfiles)
	
	pass # Replace with function body.
