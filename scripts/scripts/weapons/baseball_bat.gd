extends Weapon
class_name BaseballBat

const SWING_TIME: float = 2.0 


func _ready() -> void:	
	$Timer.timeout.connect(_on_timer_timeout)
	$Timer.wait_time = SWING_TIME


func _on_activate() -> void:
	$Timer.start()
	$Area2D.monitoring = true


func _on_timer_timeout() -> void:
	$Area2D.monitoring = false


func _on_area_2d_area_entered(area: Area2D) -> void:			
	if area.get_parent() is Enemy:
		var enemy: Enemy = area.get_parent()		
		enemy.queue_free()
