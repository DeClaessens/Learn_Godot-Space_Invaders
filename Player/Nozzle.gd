extends Node2D

var bullet_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	bullet_scene = preload("res://Bullet/Bullet.tscn")
	print(bullet_scene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func shoot_bullet():
	var instance = bullet_scene.instantiate()
	instance.global_position = global_position
	get_tree().get_root().add_child(instance)

func _on_player_shoot():
	shoot_bullet();
