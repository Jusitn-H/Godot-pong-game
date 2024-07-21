extends Node2D
var p1_Points = 0
var p2_Points = 0


func _process(delta):
	$P1.text = str(p1_Points)
	$P2.text= str(p2_Points)

func _on_top_body_entered(body):
	body.direction.y *= -1



func _on_bottom_body_entered(body):
	body.direction.y *= -1


func _on_left_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,320)
	add_child(e)
	p2_Points += 1

func _on_right_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,320)
	add_child(e)
	p1_Points += 1
	
