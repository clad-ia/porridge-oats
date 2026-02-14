extends TextureButton

@export_file("*.tscn") var next_scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_button_pressed)

# Called whenever button pressed
func _button_pressed() -> void:
	characterGlobal.character_being_considered = (characterGlobal.character_being_considered) % 6

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
