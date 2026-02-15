extends Panel

var image_sharktopus = preload("res://Sprite PNGs/Icons/sharktopus_icon.png")
var image_pteracuda = preload("res://Sprite PNGs/Icons/pteracuda_icon.png")
var image_whalewolf = preload("res://Sprite PNGs/Icons/whalewolf_icon.png")
var image_bearahna = preload("res://Sprite PNGs/Icons/bearanha-icon.png")
var image_kininja = preload("res://Sprite PNGs/Icons/sharktopus_icon.png")
var image_velocipastor = preload("res://Sprite PNGs/Icons/velocipastor_icon.png")


var characterProfiles = [
	["Name", "Description", "Name", "Succesful Dates"],
	["Sharktopus", "Description", image_sharktopus, 0],
	["Pteracuda", "Description", image_pteracuda, 0],
	["Whalewolf", "Description", image_whalewolf, 0],
	["Bearahna", "Description", image_bearahna, 0],
	["Kininja", "Description", image_kininja, 0],
	["Velocipastor", "Description", image_velocipastor, 0],
]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _left_arrow_pressed() -> void:
	pass # Replace with function body.


func _right_arrow_pressed() -> void:
	pass # Replace with function body.
