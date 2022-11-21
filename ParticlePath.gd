extends Node2D


var t = 0.0

func _process(delta):
	t += delta
	$Path2D/PathFollow2D.offset = t * 200.0
