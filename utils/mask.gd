extends Node
class_name MaskUtils

static func show_mask(target_node: Node, duration = 0.2, control_wrap = false):
	if target_node.has_node("Modulate"):
		await target_node.get_tree().create_timer(0.0).timeout
		return
	var node = CanvasModulate.new()
	node.name = "Modulate"
	node.add_to_group("mask")
	node.color = Color("#fff")
	
	var res = node
	if control_wrap:
		var control = Control.new()
		control.name = "ModulateWrapper"
		control.custom_minimum_size = Vector2(1280, 720)
		control.set_script(load("res://src/components/clickable_control.gd"))
		control.hover_effect = false
		control.add_child(node)
		target_node.add_child(control)
		res = control
	else:
		target_node.add_child(node)
	for n in target_node.get_tree().get_nodes_in_group("mask"):
		n.color = n.color
	if duration <= 0:
		node.color = Color("#939393")
	else:
		var tween = target_node.get_tree().create_tween()
		tween.tween_property(node, "color", Color("#939393"), duration)
		await tween.finished
	return res

static func close_mask(parent_node: Node, duration = 0.2):
#	var mask_node = parent_node.find_node("Modulate", true, false)
	if not parent_node.has_node("Modulate"):
		return
	var mask_node = parent_node.get_node("Modulate")
	if mask_node != null:
		var tween = mask_node.get_tree().create_tween()
		tween.tween_property(mask_node, "color", Color("#ffffff"), duration)
		await tween.finished
#		mask_node.get_parent().remove_child(mask_node)
		if mask_node != null and not mask_node.is_queued_for_deletion() and weakref(mask_node).get_ref():
			mask_node.queue_free()
	return mask_node
