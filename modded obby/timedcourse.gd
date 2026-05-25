extends Node3D
var timer = preload("uid://dc7cmgqyfc44w")
var previoustimer = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node(get_meta("signal")).activation.connect(activated)
	for n in get_children().size():
		get_children()[n].get_node("CollisionShape3D").disabled = true
		get_children()[n].get_node("MeshInstance3D").transparency = get_meta("transparency")

func activated():
	if previoustimer:
		previoustimer.queue_free()
	
	print("i do stuff")
	var timerclone = timer.instantiate()
	timerclone.parent = self
	timerclone.time = get_meta("time")
	get_parent().add_child(timerclone)
	previoustimer = timerclone
	
	for n in get_children().size():
		get_children()[n].get_node("CollisionShape3D").disabled = false
		get_children()[n].get_node("MeshInstance3D").transparency = 0
func timeout():
	print("timeout!")
	for n in get_children().size():
		get_children()[n].get_node("CollisionShape3D").disabled = true
		get_children()[n].get_node("MeshInstance3D").transparency = get_meta("transparency")
