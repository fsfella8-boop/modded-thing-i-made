extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in get_children().size():
		if get_children()[n].name.contains("Part"):
			get_children()[n].get_node("MeshInstance3D").mesh.material.set_shader_parameter("base_color", get_meta("color"))
			get_children()[n].get_node("MeshInstance3D").transparency = get_meta("transparency")
