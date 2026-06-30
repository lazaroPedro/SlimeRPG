extends TextureRect

var map = MapGrid.new()



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = map._get_abs_position(Vector2(3,4), size)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
