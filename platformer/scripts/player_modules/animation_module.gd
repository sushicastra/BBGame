class_name AnimationModule
extends Node

@export var animated_sprite : AnimatedSprite2D
@export var IDLE_THRESHOLD : float = 10

func handle_animation(body:CharacterBody2D, input:InputModule):
	var direction = input.get_direction()
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	if abs(body.velocity.x) > IDLE_THRESHOLD:
		animated_sprite.play("running")
	else:
		animated_sprite.play("idle")
	
	if body.velocity.y < 0:
		pass
