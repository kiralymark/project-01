extends CharacterBody2D

const SPEED:float = 300.0
#var _direction_map:Dictionary[Key,Vector2] = {KEY_W: Vector2(0,-1), KEY_S: Vector2(0,1), KEY_A: Vector2(-1,0), KEY_D: Vector2(1,0)}

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction:Vector2 = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):		# is InputEventKey:
		#if _direction_map.has(InputEventKey.keycode) && InputEventKey.pressed:
		#	var direction:Vector2 = _direction_map[InputEventKey.keycode]
		#	#velocity.x = direction * SPEED
		direction = Vector2(0,-1)
	if Input.is_action_pressed("ui_down"):
		direction = Vector2(0,1)
	if Input.is_action_pressed("ui_left"):
		direction = Vector2(-1,0)
	if Input.is_action_pressed("ui_right"):
		direction = Vector2(1,0)
	
	velocity = direction * SPEED
	
	move_and_slide()
