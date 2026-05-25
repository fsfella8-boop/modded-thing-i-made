extends Control
var time : float
var parent : Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	time -= delta
	$Label.text = var_to_str(round(time*10)/10)
	if time <= 0:
		parent.timeout()
		queue_free()
