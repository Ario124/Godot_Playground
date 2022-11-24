extends Control

onready var square_particles_container = $HBoxContainer/FirstBox/CenterContainer
onready var follow_particles_container = $HBoxContainer/FirstBox2/CenterContainer
onready var portal_particles_container = $HBoxContainer/FirstBox3/CenterContainer
var square_particles = load("res://Scenes/SquareParticles.tscn")
var follow_particles = load("res://Scenes/ParticlePath.tscn")
var portal_particles = load("res://Scenes/Portal.tscn")

func _on_Button_pressed():
	var particles = square_particles.instance()
	particles.scale.x = 0.4
	particles.scale.y = 0.4
	square_particles_container.add_child(particles)
	yield(get_tree().create_timer(5.0), "timeout")
	square_particles_container.remove_child(particles)




func _on_Follow_pressed():
	var particles = follow_particles.instance()
	follow_particles_container.add_child(particles)
	yield(get_tree().create_timer(10.0), "timeout")
	follow_particles_container.remove_child(particles)




func _on_Portal_pressed():
	var particles = portal_particles.instance()
	portal_particles_container.add_child(particles)
	yield(get_tree().create_timer(10.0), "timeout")
	portal_particles_container.remove_child(particles)
