class_name JumpModule
extends Node

@export var JUMP_FORCE : float = 1200
@export var JUMP_CUT_FACTOR = 0.5

@export var FLOOR_BUFFER : float = 0.05
@export var BUTTON_BUFFER : float = 0.05

var floor_counter : float = 0.0
var button_counter : float = 0.0

func handle_jump(body:CharacterBody2D, input:InputModule, delta:float):
	if body.is_on_floor():
		floor_counter = FLOOR_BUFFER
	if input.is_jump_pressed():
		button_counter = BUTTON_BUFFER
	
	if floor_counter > 0 and button_counter > 0:
		body.velocity.y = -JUMP_FORCE
		floor_counter = 0.0
		button_counter = 0.0
	
	if input.is_jump_released() and body.velocity.y < 0:
		body.velocity.y *= JUMP_CUT_FACTOR
	
	floor_counter -= delta
	button_counter -= delta
