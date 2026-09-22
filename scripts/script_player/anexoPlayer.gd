class_name PlayerScript
extends CharacterBody2D

var spd: float = 120.0

var movement: PlayerMovement = PlayerMovement.new()


func _physics_process(_delta: float) -> void:
	var direction: Vector2 = movement.get_direction()

	velocity = direction * spd

	move_and_slide()

	if direction != Vector2.ZERO:
		print("Direção: ", direction)
		print("Posição: ", global_position)
