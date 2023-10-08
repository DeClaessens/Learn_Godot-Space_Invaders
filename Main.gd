extends Node2D

var enemy_scene

signal go_the_other_way
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_army()

func spawn_army():
	enemy_scene = preload("res://Enemy/Enemy.tscn")
	for n in 5:
		var instance = enemy_scene.instantiate()
		var x = 128 * (n + 2)
		instance.position = Vector2(x, 50)
		var tree = get_tree()
		var root = get_tree().get_root()
		get_tree().get_root().get_node("Main").add_child.call_deferred(instance)
		instance.connect("touching_edge", _on_enemy_touching_edge)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_touching_edge():
	print("Hello World")
	$Timer.stop()
	emit_signal("go_the_other_way")
	$Timer.start()
