extends Character
class_name Player


var packed_baseball_bat: PackedScene = preload("res://scenes/weapons/baseball_bat.tscn")


func _ready() -> void:
	var baseball_bat: BaseballBat = packed_baseball_bat.instantiate()
	#baseball_bat.character = self
	baseball_bat.initialize(self)
	baseball_bat.position = Vector2(64, 0)
	$Inventory.add_child(baseball_bat)


func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction:Vector2 = Vector2(0, 0)
	if Input.is_action_pressed("up_key"):
		direction += Vector2(0, -1)
	if Input.is_action_pressed("down_key"):
		direction += Vector2(0, 1)
	if Input.is_action_pressed("left_key"):
		direction += Vector2(-1, 0)
	if Input.is_action_pressed("right_key"):
		direction += Vector2(1, 0)
	
	velocity = direction.normalized() * SPEED
	move()
	
	if Input.is_action_pressed("left_mouse"):
		activate.emit()


func _on_area_2d_area_entered(_area: Area2D) -> void:
	get_tree().reload_current_scene.call_deferred()
