extends Node2D
class_name Character

enum State { WAITING, WALKING, ATTACKING, DEFEATED, DAMAGE }
enum Type { ENEMY, PLAYER }
@export var texture:SpriteFrames
var player_name

var type: Type

var grid_position: Vector2


@export
var stats: CharacterStats

func _turn_ready(enemies):
	match type:
		Type.ENEMY:
			_turn_ready_enemies(enemies)
		Type.PLAYER:
			_turn_ready_players(enemies)


func _turn_ready_enemies(enemies: Array):
	var enemy = enemies.pick_random()
	enemy._take_damage(stats.damage())
	pass

func _turn_ready_players(enemies: Array):
	$ButtonPlayer.show()
	var action = await $ButtonPlayer.attack_chosen
	if action == PlayerButton.Type.ATTACK:
		var enemy = enemies.pick_random()
		enemy._take_damage(stats.damage())
	$ButtonPlayer.hide()

func _take_damage(damage_target):
	stats.modifyHealth(damage_target)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Texture.sprite_frames = texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
