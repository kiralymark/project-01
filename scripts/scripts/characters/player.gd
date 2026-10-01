extends Character
class_name Player


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


func _on_area_2d_area_entered(_area: Area2D) -> void:
	print("I'm dying :(")
	#get_tree()
	
	#call_deferred("queue_free")
	#$Area2D/CollisionShape2D.call_deferred("queue_free")
	#get_tree().reload_current_scene()
	
	#$CollisionShape2D.call_deferred("queue_free")
	#area.get_child(0).call_deferred("queue_free")
	#get_tree().reload_current_scene()
	
	get_tree().reload_current_scene.call_deferred()

	#call_deferred("treeObject.reload_current_scene")
