extends Node
class_name U

static func no_negative_zero_vector2(src : Vector2) -> Vector2:
	if src.x == -0:
		src.x = 0
	if src.y == -0:
		src.y = 0
	return src

static func gravity_direction2vector(gravity_direction : int) -> Vector2:
	if gravity_direction < 0 or gravity_direction >= C.GRAVITY_VECTOR_SET.size():
		return C.GRAVITY_VECTOR
	return C.GRAVITY_VECTOR_SET[gravity_direction]
	
static func gravity_vector2forward_vector(gravity_vector : Vector2, facing : int) -> Vector2:
	return no_negative_zero_vector2(gravity_vector.rotated(-(PI / 2) * facing).round())

static func setup_timer(timer_node : Timer, wait_time : float ) -> void:
	if wait_time == -1:
		timer_node.queue_free()
	else:
		timer_node.wait_time = wait_time
		timer_node.start()

static func node2string(node: Node) -> String:
	var props : Dictionary = {}
	
	for prop in node.get_property_list():
		props[prop.name] = node.get(prop.name)
	
	return to_json(props)
	

#==== editor ====
static func in_editor() -> bool:
	return Engine.editor_hint


