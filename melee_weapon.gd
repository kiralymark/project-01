extends Weapon
class_name MeleeWeapon

const SWING_TIME: float = 2.0 


func _ready() -> void:
	var timer: Timer = $Timer
	
	timer.timeout.connect(_on_timer_timeout)
	timer.wait_time = SWING_TIME


func _on_activate() -> void:
	var timer: Timer = $Timer
	var area: Area2D = $Area2D
	
	timer.start()
	area.monitoring = true


func _on_timer_timeout() -> void:
	var area: Area2D = $Area2D
	
	area.monitoring = false


func _on_area_2d_area_entered(area: Area2D) -> void:			
	if area.get_parent() is Enemy:
		var enemy: Enemy = area.get_parent()		
		enemy.queue_free()
