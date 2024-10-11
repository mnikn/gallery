extends Node
class_name StoryUtils

static func filter_valid_storyles(storylets, context = {}):
	var filter_storlets = ArrayUtils.filter(storylets, func (item):
		if item == null:
			return false
		var code = ObjectUtils.get_value(item.get_root_node(), "data.enableCheck", "")
		if len(code) == 0:
			return true
		return await ExpressionUtils.eval(code, { "manager": "GameManager", "tracker": "StoryTracker" }, ObjectUtils.assign({ "current_node": item.get_root_node(), "current_process_node": item.get_root_node() }, context)))
	return filter_storlets
