extends Area2D

var speed = 300;

# Called when the node enters the scene tree for the first time.
func _ready():
	var rect2 = get_viewport_rect()
	print(rect2.position)
	print(rect2.size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.UP * speed
	position += velocity * delta
	if (position.y < get_viewport_rect().position.y):
		queue_free()

