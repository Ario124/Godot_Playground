extends Control


var square_particles = load("res://Scenes/SquareParticles.tscn")


func _on_Button_pressed():
	var particles = square_particles.instance()
	add_child(particles)
	yield(get_tree().create_timer(5.0), "timeout")
	remove_child(particles)
