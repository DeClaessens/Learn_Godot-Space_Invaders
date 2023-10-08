extends Area2D

var player_movement = Vector2(0, 0);
var speed = 300;

signal shoot;
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += calculate_player_velocity() * delta

func _input(event):
	if(event.is_action_pressed("Spacebar")): shoot_bullet()

func shoot_bullet():
	emit_signal("shoot");

func calculate_player_velocity():
	var velocity = Vector2.ZERO
	if (Input.is_action_pressed("Move Left")):
		velocity = Vector2.LEFT
	if (Input.is_action_pressed("Move Right")):
		velocity = Vector2.RIGHT
		
	return velocity * speed
