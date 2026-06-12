extends Node
class_name CharacterModel


enum Type { ENEMY, PLAYER }
var player_name
var life
var type
var damage

func _turn_ready(enemies):
	pass

func _take_damage(damage_target):
	var actual_life = life - damage_target
	if actual_life <=0:
		queue_free()
	life = actual_life

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
