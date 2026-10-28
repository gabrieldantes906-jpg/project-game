class_name Movement
extends Node

@export var speed: float = 300.0

var character_body: CharacterBody2D

func _ready() -> void:
	character_body = get_parent() as CharacterBody2D

func _physics_process(_delta: float) -> void:
	var input_vector := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	character_body.velocity = input_vector * speed
	character_body.move_and_slide()
