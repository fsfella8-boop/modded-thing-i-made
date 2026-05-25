extends RigidBody3D
signal activation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MeshInstance3D.mesh.material.set_shader_parameter("base_color", get_meta("color"))
	$Area3D/CollisionShape3D.scale = Vector3(1+0.05/scale.x, 1+0.05/scale.y, 1+0.05/scale.z)



func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		print("button pressed")
		activation.emit()
