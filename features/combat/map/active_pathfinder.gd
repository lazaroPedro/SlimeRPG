extends Node2D
var pathfinder: Array
var center: Array

func _active_pathfinder(_pathfinder: Array, _center: Array):
	pathfinder = _pathfinder
	center = _center
	queue_redraw()

func _draw() -> void:
	var cell_size = owner.cell_size
	for cell in pathfinder:
		var pos_abs = owner._get_abs_position(cell)
		draw_rect(Rect2(pos_abs, Vector2(cell_size, cell_size)), Color.AQUA)
	for cell in center:
		var pos_abs = owner._get_abs_position(cell)
		draw_rect(Rect2(pos_abs, Vector2(cell_size, cell_size)), Color.BLUE_VIOLET)
		
func _disable_pathfinder():
	pathfinder.clear()
	center.clear()
	queue_redraw()
