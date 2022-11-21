extends Particles2D


#var speed = 600
#
#func _ready():
#	position += get_global_mouse_position()    ## Setting position of particles to mouse position at start
#
#func _process(delta):
#	var vec = get_viewport().get_mouse_position() - self.position ## Will get the vector from self to the mouse
#	vec = vec.normalized() * delta * speed ## Normalized and multiply by time and speed
#	position += vec ## Move
