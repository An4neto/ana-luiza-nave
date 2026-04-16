extends CharacterBody2D

signal game_over

var gravity: float = 800.0
var flap_strength: float = -300.0

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("flap"):
		velocity.y = flap_strength

	move_and_slide()
	


func _on_area_2d_area_entered(area: Area2D) -> void:
	game_over.emit()
