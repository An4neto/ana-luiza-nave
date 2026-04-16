extends Node2D

const ASTEROID_SCENE = preload("res://asteroid.tscn")

func _on_timer_timeout() -> void:
	var asteroid: Node2D =ASTEROID_SCENE.instantiate()
	
	var screen_size =get_viewport_rect().size
	
	asteroid.position = Vector2(screen_size.x, randf_range(0, screen_size.y))
	
	add_child(asteroid)


func _on_nave_game_over() -> void:
	print("game over")
	get_tree().call_deferred("reload_current_scene")
