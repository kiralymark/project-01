extends CharacterBody2D
class_name Character


signal activate

const SPEED: float = 300.0

func move():
	move_and_slide()
