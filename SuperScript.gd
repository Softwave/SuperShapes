extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var m1_var = 0.0
var glow_bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M1Slider").value = 8.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N11Slider").value = 60.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N12Slider").value = 100.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N13Slider").value = 30.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A1Slider").value = 1.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B1Slider").value = 1.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M2Slider").value = 2.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N21Slider").value = 10.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N22Slider").value = 10.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N23Slider").value = 10.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A2Slider").value = 1.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B2Slider").value = 1.0

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
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N1Label")
	tempLabel.text = "N1 1: " + str(value)


func _on_N12Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N12", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N1Label2")
	tempLabel.text = "N 1 2: " + str(value)


func _on_N13Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N13", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N1Label3")
	tempLabel.text = "N 1 3: " + str(value)


func _on_A1Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_A1", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A1Label")
	tempLabel.text = "A1: " + str(value)


func _on_B1Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_B1", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B1Label")
	tempLabel.text = "B1: " + str(value)


func _on_ButtonToggleControls_pressed():
	get_node("../../../CanvasLayer/WindowDialog").popup();


func _on_M2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_M2", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M2Label")
	tempLabel.text = "M2: " + str(value)


func _on_N21Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N21", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N21Label")
	tempLabel.text = "N 2 1: " + str(value)


func _on_N22Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N22", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N22Label")
	tempLabel.text = "N 2 2: " + str(value)


func _on_N23Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_N23", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N23Label")
	tempLabel.text = "N 2 3: " + str(value)


func _on_A2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_A2", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A2Label")
	tempLabel.text = "A 2: " + str(value)


func _on_B2Slider_value_changed(value):
	var superMesh = get_node("../MeshInstance")
	superMesh.get_surface_material(0).set_shader_param("_B2", value)
	var tempLabel = get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B2Label")
	tempLabel.text = "B2: " + str(value)


func _on_BtnReset_pressed():
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M1Slider").value = 8.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N11Slider").value = 60.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N12Slider").value = 100.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N13Slider").value = 30.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A1Slider").value = 1.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B1Slider").value = 1.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/M2Slider").value = 2.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N21Slider").value = 10.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N22Slider").value = 10.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/N23Slider").value = 10.0
	
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/A2Slider").value = 1.0
	get_node("../../../CanvasLayer/WindowDialog/VBoxContainer/B2Slider").value = 1.0


#uniform float _M1 = 8.0;
#uniform float _N11 = 60.0;
#uniform float _N12 = 100.0;
#uniform float _N13 = 30.0;
#uniform float _A1 = 1.0;
#uniform float _B1 = 1.0;
#
#uniform float _M2 = 2.0;
#uniform float _N21 = 10.0;
#uniform float _N22 = 10.0;
#uniform float _N23 = 10.0;
#uniform float _A2 = 1.0;
#uniform float _B2 = 1.0;


func _on_btnToggleBloom_toggled(button_pressed):
	glow_bool = !glow_bool
	if (glow_bool == true):
		get_node("../../../TrackballCamera").environment.glow_bloom = 0.14
	else:
		get_node("../../../TrackballCamera").environment.glow_bloom = 0.0
	
