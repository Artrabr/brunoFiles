class_name Player
extends CharacterBody2D

#=============Modificadores==================
var m_str:             int = 5 #forca       I
var m_dex:             int = 5 #destreza    I
var m_con:             int = 5 #constituiçãoI
var m_int:             int = 5 #inteligenciaI
var m_cha:             int = 5 #carisma     I
#============================================

var character_name: String = "Michael"
var age: int = 16
var spd: int = 5

var base_hp: int = 50
var max_hp: int = get_max_hp()
var hp: int = max_hp


func get_max_hp() -> int:
	var output: int = base_hp + (m_con * 10)
	return output


func _ready() -> void:
	print("HP atual: ", hp)
	print("HP máximo: ", max_hp)
