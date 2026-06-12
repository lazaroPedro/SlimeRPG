extends BoxContainer
class_name PlayerButton
enum Type { ATTACK, PASS }
signal attack_chosen(type: Type)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_attack_pressed() -> void:
	attack_chosen.emit(Type.ATTACK)



func _on_pass_pressed() -> void:
	attack_chosen.emit(Type.PASS)

	
