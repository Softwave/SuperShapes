extends Button


func _on_btnScreen_pressed():
	$"../../..".visible = false
	yield(get_tree().create_timer(0.5),"timeout")
	# Capture the screenshot
	var size = OS.window_size

	var image = get_viewport().get_texture().get_data()
	
	# Setup path and screenshot filename
	var date = OS.get_datetime()
	var path = "user://screenshots"
	var file_name = "screenshot-%d-%02d-%02dT%02d:%02d:%02d" % [date.year, date.month, date.day, date.hour, date.minute, date.second]
	var dir = Directory.new()
	if not dir.dir_exists(path):
		dir.make_dir(path)
	
	# Find a filename that isn't taken
	var n = 1
	var file_path = path.plus_file(file_name) + ".png"
	while(true):
		if dir.file_exists(file_path):
			file_path = path.plus_file(file_name) + "-" + str(n) + ".png"
			n = n + 1
		else:
			break
	
	# Save the screenshot
	image.flip_y()
	image.resize(size.x, size.y, Image.INTERPOLATE_NEAREST)
	image.save_png(file_path)
	$"../../..".visible = true
