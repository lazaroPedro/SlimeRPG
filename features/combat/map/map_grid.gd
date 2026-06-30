extends Node2D
class_name MapGrid


@export var cell_size := 64

@export var COLUMN: int = 16
@export var ROW: int = 9
var grid_layout := Vector2i(COLUMN,ROW)


@export var grid_color: Color = Color.WHITE
@export var line_width: float = 1.0
var active_pathfinder: Array[Vector2]
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
func _get_abs_position(position: Vector2):
	var x = position.x * cell_size 
	var y = position.y * cell_size 
	return Vector2(x,y)


func _ready() -> void:
	$ActivePathfinder._active_pathfinder([Vector2(2,4), Vector2(4,4)])

	
