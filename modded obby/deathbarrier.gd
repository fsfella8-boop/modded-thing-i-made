extends Node3D
var spawnposition : Vector3

func _ready() -> void:
	spawnposition = get_node(get_meta("player")).position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_node(get_meta("player")).position.y <= spawnposition.y-50:
		get_node(get_meta("player")).position = spawnposition
