extends Node
class_name TurnManager
var index = 0
var list_characters = []

func _register(character):
	list_characters.append(character)
	
func _pass_turn():
	while !list_characters.is_empty():
		var actual_character = list_characters[index]
		await actual_character._turn_ready(_get_enemies(actual_character.type))
		index = (index + 1) % list_characters.size() 
	

		
func _get_enemies(type_char):
	return list_characters.filter(func(character): return character.type != type_char)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	await _pass_turn()
	pass
