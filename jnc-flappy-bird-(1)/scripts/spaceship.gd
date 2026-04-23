extends CharacterBody2D

signal game_over

var gravity: float = 800.0
var flap_stregth: float = -300.0

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("flap"):
		velocity.y = flap_stregth
		
	if Input.is_action_just_pressed("esquerda"):
		position.x -= 200.0 * delta
		
	if Input.is_action_just_pressed("direita"):
		position.x += 200.0 * delta
	
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	game_over.emit()
