extends Control

onready var square_particles_container = $HBoxContainer/FirstBox/CenterContainer
var square_particles = load("res://Scenes/SquareParticles.tscn")

func _on_Button_pressed():
	var particles = square_particles.instance()
	particles.scale.x = 0.4
	particles.scale.y = 0.4
	square_particles_container.add_child(particles)
	yield(get_tree().create_timer(5.0), "timeout")
	square_particles_container.remove_child(particles)
