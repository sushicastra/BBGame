class_name InputModule
extends Node

func get_direction() -> float:
	return Input.get_axis("left", "right")

func is_jump_pressed() -> bool:
	return Input.is_action_just_pressed("jump")

func is_jump_holded() -> bool:
	return Input.is_action_pressed("jump")

func is_jump_released() -> bool:
	return Input.is_action_just_released("jump")
