class_name Player
extends CharacterBody2D
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

# ============ DADOS ============
var character_name: String = "Michael"

var m_str: int = 5
var m_dex: int = 5
var m_con: int = 5
var m_int: int = 5
var m_cha: int = 5

var spd: float = m_dex*50

var base_hp: int = 50
var max_hp: int = get_max_hp()
var hp: int = max_hp

# ============ VIDA ============

func get_max_hp() -> int:
	return base_hp + (m_con * 10)

# ============ MOVIMENTO ============

func get_direction() -> Vector2:
	var direction: Vector2 = Vector2.ZERO

	if Input.is_key_pressed(KEY_W):
		direction.y -= 1

	if Input.is_key_pressed(KEY_S):
		direction.y += 1

	if Input.is_key_pressed(KEY_A):
		direction.x -= 1

	if Input.is_key_pressed(KEY_D):
		direction.x += 1

	return direction.normalized()

func change_sprite_movement(direction: Vector2) -> void: #alterar o sprite caminhando
	if direction.x < 0:
		sprite.play("walk_left")

	elif direction.x > 0:
		sprite.play("walk_right")

	elif direction.y < 0:
		sprite.play("walk_up")

	elif direction.y > 0:
		sprite.play("walk_down")

	elif direction.y == 0:
		sprite.play("idle")

func _physics_process(_delta: float) -> void:
	var direction: Vector2 = get_direction()

	velocity = direction * spd
	change_sprite_movement(direction)

	move_and_slide()

# ============ INICIALIZAÇÃO ============

func _ready() -> void:
	print("HP atual: ", hp)
	print("HP máximo: ", max_hp)
