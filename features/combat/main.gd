extends Node2D

var turn_manager
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	turn_manager = TurnManager.new()
	var enemy = get_node("Enemy")
	var player = get_node("Player")
	turn_manager._register(player)
	turn_manager._register(enemy)
	turn_manager._pass_turn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
