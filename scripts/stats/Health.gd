class_name Health
extends Node

@export var max_health: int = 100
@export var current_health: int
@export var health_label: Label

func _ready() -> void:
	print("Здоровье: ", current_health, "/", max_health)
	update_health_display()
	
func update_health_display() -> void:
	if health_label:
		health_label.text = str(current_health) + " / " + str(max_health) + "HP"
