extends Area2D

var enemy_movement = Vector2.LEFT
var speed = 32

var I_AM_THE_SIGNALER = false

signal touching_edge
# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().get_node("Timer").connect("timeout", _on_timer_timeout)
	get_parent().connect("go_the_other_way", _on_main_go_the_other_way)

func is_about_to_leave_viewport(position, velocity):
	var newPos = position + velocity
	if (newPos.x <= get_viewport_rect().position.x):
		return true;
	if (newPos.x > get_viewport_rect().size.x):
		return true;
	return false;
		
func move_enemy_laterally():
	var velocity = Vector2.ZERO
	velocity = enemy_movement * speed;

	if(is_about_to_leave_viewport(position, velocity)):
		print("Hello World")
		emit_signal("touching_edge")
	else:
		position += velocity

func _on_timer_timeout():
	move_enemy_laterally()

func _on_main_go_the_other_way():
	enemy_movement *= -1
	position += Vector2.DOWN * speed
