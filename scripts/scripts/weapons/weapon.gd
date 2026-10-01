extends Node2D
class_name Weapon


func initialize(character: Character) -> void:
	character.activate.connect(_on_activate)

func _on_activate() -> void:
	push_warning("override")
