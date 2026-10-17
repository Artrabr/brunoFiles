class_name Player extends CharacterBody2D

#region // Dados do player
# ============ DADOS ============
var character_name: String = "Michael"

@export_category("Modifiers")
@export var m_str: int = 5
@export var m_dex: int = 5
@export var m_con: int = 5
@export var m_int: int = 5
@export var m_cha: int = 5

var spd: float = m_dex*50

var base_hp: int = 50
var max_hp: int = get_max_hp()
var hp: int = max_hp

@export_category("Objects")
@export var animated_sprite: AnimatedSprite2D# = $AnimatedSprite2D
#endregion

# ============ VIDA ============

func get_max_hp() -> int:
	return base_hp + (m_con * 10)

#============ FUNÇÕES ==============

func update_sprite(direction: Vector2) -> void:
	if direction == Vector2.ZERO:
		animated_sprite.play("idle")
	elif absf(direction.x) > absf(direction.y):
		animated_sprite.play("walk_right" if direction.x > 0.0 else "walk_left") #verifica qual eixo é mais forte
	else:
		animated_sprite.play("walk_down" if direction.y > 0.0 else "walk_up")

func attack(item: String) -> void:
	for body in $Area2D.get_overlapping_bodies():
		if body.is_in_group("enemies"):
			var damage = calculate_damage(item)
			body.hp -= damage
			print("Ataque realizado com sucesso")

func calculate_damage(item: String) -> int:
	match item: # Parecido com switch no PHP/GML
		"faca":
			return 10
		"espada":
			return 20
		_:
			return 1
	

# ============ EVENTOS DE FISICA ============

func _physics_process(_delta: float) -> void:
	#---VARIAVEIS---
	var direction: Vector2  = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	if Input.is_action_just_pressed("attack"):
		attack("faca")
	

	velocity = direction * spd
	

	move_and_slide()
	update_sprite(direction)
