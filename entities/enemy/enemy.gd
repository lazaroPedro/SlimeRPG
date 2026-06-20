extends CharacterModel



func _turn_ready(enemies: Array):
	var enemy = enemies.pick_random()
	enemy._take_damage(damage)
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	type = Type.ENEMY
	damage = 10
	life = 10
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
