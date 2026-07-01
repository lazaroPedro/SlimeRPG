extends Node2D
var pathfinder: Array
var center: Array
var cell_size
func _active_pathfinder(_pathfinder: Array, _center: Array):
	pathfinder = _pathfinder
	center = _center
	queue_redraw()

func _draw() -> void:
	for cell in pathfinder:
		draw_rect(Rect2(cell, Vector2(cell_size.x, cell_size.y)), Color.AQUA)
	for cell in center:
		var pos_abs = owner._get_abs_position(cell)
		draw_rect(Rect2(pos_abs, Vector2(cell_size, cell_size)), Color.BLUE_VIOLET)
		
func _disable_pathfinder():
	pathfinder.clear()
	center.clear()
	queue_redraw()
