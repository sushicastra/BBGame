class_name GravityModule
extends Node

@export var GRAVITY : float = 3000

func handle_gravity(body:CharacterBody2D, input:InputModule, delta:float):
	var gravity = GRAVITY
	body.velocity.y += gravity * delta
