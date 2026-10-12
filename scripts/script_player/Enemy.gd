class_name Enemy extends CharacterBody2D

@export_category("Modifiers")
@export var m_str: int = 5
@export var m_dex: int = 5
@export var m_con: int = 5
@export var m_int: int = 5
@export var m_cha: int = 5

var hp: int = 10

func _ready() -> void:
	add_to_group("enemy")
	pass

func _physics_process(_delta: float) -> void:
	pass
