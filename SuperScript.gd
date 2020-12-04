extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var m1_var = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func get_input(delta):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	pass

func _on_M1Slider_value_changed(value):
	m1_var = value
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_M1", m1_var)
	# Change text
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M1Label")
	tempLabel.text = "M1: " + str(value)


func _on_N11Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N11", value)


func _on_N12Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N12", value)


func _on_N13Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N13", value)


func _on_A1Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_A1", value)


func _on_B1Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_B1", value)


func _on_ButtonToggleControls_pressed():
	get_node("../../../CanvasLayer/WindowDialog").popup();


func _on_M2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_M2", value)


func _on_N21Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N21", value)


func _on_N22Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N22", value)


func _on_N23Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N23", value)


func _on_A2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_A2", value)


func _on_B2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_B2", value)
