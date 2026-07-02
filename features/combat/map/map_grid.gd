extends Node2D
class_name MapGrid
@export var tilemap: TileMapLayer



@export var COLUMN: int = 16
@export var ROW: int = 9
var grid_layout := Vector2i(COLUMN,ROW)


@export var grid_color: Color = Color.WHITE
@export var line_width: float = 1.0
var active_pathfinder: Array[Vector2]
func _draw():
#	var tiles = tilemap.get_used_cells()

	var full_map = tilemap.get_used_rect()
	var cell_size = tilemap.tile_set.tile_size
	for x in range(full_map.size.x + 1):
		var px = (full_map.position.x + x) * cell_size.x
		draw_line(
			Vector2i(px, full_map.position.y * cell_size.y),
			Vector2i(px, (full_map.position.y + full_map.size.y) * cell_size.y),
			grid_color,
			line_width
		)
	for y in range(full_map.size.y + 1):
		var py = (full_map.position.y + y) * cell_size.y
		draw_line(
			Vector2i(full_map.position.x * cell_size.x, py),
			Vector2i((full_map.position.x + full_map.size.x) * cell_size.x, py),
			grid_color,
			line_width
		)
func _get_abs_position(_position: Vector2):
	pass


func _ready() -> void:
	queue_redraw()
	$ActivePathfinder.cell_size = tilemap.tile_set.tile_size
	var l = tilemap.map_to_local(Vector2i(2,4))
	$ActivePathfinder._active_pathfinder([l], [])

	
