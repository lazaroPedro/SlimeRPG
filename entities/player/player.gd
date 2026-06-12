extends CharacterModel
const Buttons = preload("res://entities/player_button.tscn")
func _turn_ready(enemies):
	$ButtonPlayer.show()
	var action = await $ButtonPlayer.attack_chosen
	if action == PlayerButton.Type.ATTACK:
		var enemy = enemies.pick_random()
		print("atacou")
		enemy._take_damage(damage)
	$ButtonPlayer.hide()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	type = Type.PLAYER
	damage = 10
	life = 100
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
