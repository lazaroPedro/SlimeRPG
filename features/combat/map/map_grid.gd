extends Node2D

var grid_layout: Array[Array]

@export var cell_size := 120



func _draw() -> void:
	for y in range(12):
		for x in range(12):
			var vector = Vector2(x * cell_size, y * cell_size)
			draw_rect(Rect2(vector, Vector2(cell_size, cell_size)), Color.WHITE, false)
	pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	queue_redraw()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
