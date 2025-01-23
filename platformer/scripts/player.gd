class_name Player
extends CharacterBody2D

@export var input : InputModule
@export var run : RunModule
@export var jump : JumpModule
@export var gravity : GravityModule
@export var animation : AnimationModule

func _physics_process(delta: float) -> void:
	run.handle_run(self, input, delta)
	jump.handle_jump(self, input, delta)
	gravity.handle_gravity(self, input, delta)
	animation.handle_animation(self, input)
	move_and_slide()
