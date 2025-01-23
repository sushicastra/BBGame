class_name RunModule
extends Node

@export var SPEED : float = 300
@export var ACCELERATION : float = 20
@export var DECELERATION : float = 50
@export var AIR_ACCELERATION : float = 20
@export var AIR_DECELERATION : float = 10

func handle_run(body:CharacterBody2D, input:InputModule, delta:float):
	var direction = input.get_direction()
	var target_vel = direction * SPEED
	var vel_diff = target_vel - body.velocity.x
	var accel_rate = ACCELERATION if abs(direction) > 0 else DECELERATION
	if not body.is_on_floor():
		accel_rate = AIR_ACCELERATION if abs(direction) > 0 else AIR_DECELERATION
	body.velocity.x += vel_diff * accel_rate * delta
