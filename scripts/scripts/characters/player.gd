extends Character
class_name Player


func _process(_delta: float) -> void:
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
