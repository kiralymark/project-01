extends CharacterBody2D

const SPEED:float = 300.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction:Vector2 = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		direction += Vector2(0,-1)
	if Input.is_action_pressed("ui_down"):
		direction += Vector2(0,1)
	if Input.is_action_pressed("ui_left"):
		direction += Vector2(-1,0)
	if Input.is_action_pressed("ui_right"):
		direction += Vector2(1,0)
	
	velocity = direction.normalized() * SPEED
	
	move_and_slide()
