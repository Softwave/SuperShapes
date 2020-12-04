extends KinematicBody

export var rot_speed = 0.85

func _physics_process(delta):
	rotate_x(rot_speed * delta)
	rotate_y(rot_speed * delta)
