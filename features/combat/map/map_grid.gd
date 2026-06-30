extends Node2D
class_name MapGrid


@export var cell_size := 32




@export var grid_layout := Vector2i(15,9)


@export var grid_color: Color = Color.WHITE
@export var line_width: float = 1.0

func _draw():
	for x in range(grid_layout.x + 1):
		var px = x * cell_size
		draw_line(
			Vector2(px, 0),
			Vector2(px, grid_layout.y * cell_size),
			grid_color,
			line_width
		)


	for y in range(grid_layout.y + 1):
		var py = y * cell_size
		draw_line(
			Vector2(0, py),
			Vector2(grid_layout.x * cell_size, py),
			grid_color,
			line_width
		)


func _get_abs_position(position: Vector2, size: Vector2):
	var x = position.x * cell_size 
	var y = position.y * cell_size 
	return Vector2(x,y)
