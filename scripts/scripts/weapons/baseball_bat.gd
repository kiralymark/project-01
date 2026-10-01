extends Weapon
class_name BaseballBat


#var timer: Timer 
const SWING_TIME: float = 2.0 


func _ready() -> void:
	#timer.timeout.connect(_on_timer_timeout)
	#timer.wait_time = SWING_TIME
	$Timer.timeout.connect(_on_timer_timeout)
	$Timer.wait_time = SWING_TIME

#override
func _on_activate() -> void:
	#push_warning("!")
	#timer.start()
	$Timer.start()
	$Area2D.monitoring = true


func _on_timer_timeout() -> void:
	$Area2D.monitoring = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	# TO DO make standalone signal please
	#var enemy: Enemy = Enemy(area)
	#if enemy is Enemy:
		#area.queue_free()
		
	if area.get_parent().is_in_group("enemy"):
		print("")
		area.get_parent().queue_free()
