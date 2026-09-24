extends Character
class_name Enemy

var _player: Player

func _ready() -> void:
	_player = get_node("/root/Game/Player")


func _physics_process(_delta: float) -> void:
	var player_position: Vector2 = _player.global_position
	var direction = (player_position - global_position).normalized()
	
	velocity = direction * SPEED
		
	move()
