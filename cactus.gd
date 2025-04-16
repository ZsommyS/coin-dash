extends Area2D
var screensize = Vector2.ZERO


func _on_area_entered(area):
	if area.is_in_group("coins"):
		position = Vector2(randi_range(0,screensize.x),randi_range(0,screensize.y))
	if area.is_in_group("obstacles"):
		position = Vector2(randi_range(0,screensize.x),randi_range(0,screensize.y))
	if area.is_in_group("powerups"):
		position = Vector2(randi_range(0,screensize.x),randi_range(0,screensize.y))
	if area.is_in_group("player"):
		position = Vector2(randi_range(0,screensize.x),randi_range(0,screensize.y))

func _ready():
	$Lifetime.start(randi_range(5,15))

func _on_lifetime_timeout():
	queue_free()
