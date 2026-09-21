class_name galinha
extends CharacterBody2D

#=============Modificadores===================
var m_str:             int = 0 #forca        I
var m_dex:             int = 8 #destreza     I 
var m_con:             int = 1 #constituição I
var m_int:             int = -3 #inteligenciaI
var m_cha:             int = 0 #carisma      I
#=============================================

var gender:String  #genero
var pet_nome:String#nome

var spd: int = m_dex

var base_hp: int = 1
var max_hp: int = get_max_hp()
var hp: int = max_hp

func _init(p_gender: String, p_name: String) -> void:
    gender = p_gender
    pet_nome = p_name

func get_max_hp() -> int:
    var output: int = base_hp + (m_con * 10)
    return output

func _ready() -> void:
    return 