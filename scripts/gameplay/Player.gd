# scripts/gameplay/Player.gd
extends CharacterBody2D

@export var move_speed := 220.0

func _physics_process(_delta: float) -> void:
	# 使用我们在 Input Map 里定义的四方向动作
	var dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = dir * move_speed
	move_and_slide()
