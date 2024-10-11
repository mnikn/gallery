extends Node

# triggered_times: 0, 
var nodes_extra_info = {}
var link_extra_info = {}
var flags = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func add_node_extra_prop_count(node_id: String, prop, initial_val = 0):
	var c = ObjectUtils.get_value(self.nodes_extra_info, node_id + "." + prop, initial_val) + 1
	ObjectUtils.set_value(self.nodes_extra_info, node_id + "." + prop, c)

func add_link_extra_prop_count(source_id: String, target_id: String, prop, initial_val = 0):
	var link_id = source_id + '-' + target_id
	var c = ObjectUtils.get_value(self.link_extra_info, link_id + "." + prop, initial_val) + 1
	ObjectUtils.set_value(self.link_extra_info, link_id + "." + prop, c)

func get_node_triggered_times(node_id):
	if not self.nodes_extra_info.has(node_id):
		return 0
	return ObjectUtils.get_value(self.nodes_extra_info[node_id], "triggered_times", 0)

func get_node_show_times(node_id):
	if not self.nodes_extra_info.has(node_id):
		return 0
	return ObjectUtils.get_value(self.nodes_extra_info[node_id], "show_times", 0)

# node triggered tiems
func ntt(node_id):
	if not self.nodes_extra_info.has(node_id):
		return 0
	return ObjectUtils.get_value(self.nodes_extra_info[node_id], "triggered_times", 0)

# node show times
func nst(node_id):
	if not self.nodes_extra_info.has(node_id):
		return 0
	return ObjectUtils.get_value(self.nodes_extra_info[node_id], "show_times", 0)

# link show times
func lst(source_id, target_id):
	var link_id = source_id + '-' + target_id
	if not self.link_extra_info.has(link_id):
		return 0
	return ObjectUtils.get_value(self.link_extra_info[link_id], "show_times", 0)
	
# link has show
func lhs(source_id, target_id):
	return self.lst(source_id, target_id) > 0
	
# link triggered times
func ltt(source_id, target_id):
	var link_id = source_id + '-' + target_id
	if not self.link_extra_info.has(link_id):
		return 0
	return ObjectUtils.get_value(self.link_extra_info[link_id], "triggered_times", 0)

# link has triggered
func lht(source_id, target_id):
	return self.ltt(source_id, target_id) > 0

# storylet has show
func shs(storylet_id):
	return self.nhs(DataStory.get_storylet(storylet_id).get_root_node().id)

# node has show
func nhs(node_id):
	return self.nst(node_id) > 0

# custom node triggered times
func cntt(storylet_id, custom_node_id):
	var node = ArrayUtils.find(DataStory.get_storylet(storylet_id).nodes.values(), func (item): return ObjectUtils.get_value(item.data, "customNodeId") == custom_node_id)
	if node == null:
		return 0
	return self.ntt(node.id)
	
# custom node show times
func cnst(storylet_id, custom_node_id):
	var node = ArrayUtils.find(DataStory.get_storylet(storylet_id).nodes.values(), func (item): return ObjectUtils.get_value(item.data, "customNodeId") == custom_node_id)
	if node == null:
		return 0
	return self.nst(node.id)

# custom node has show
func cnhs(storylet_id, custom_node_id):
	var node = ArrayUtils.find(DataStory.get_storylet(storylet_id).nodes.values(), func (item): return ObjectUtils.get_value(item.data, "customNodeId") == custom_node_id)
	if node == null:
		return false
	return self.nhs(node.id)
	
func flag_true(flag):
	return ObjectUtils.get_value(self.flags, flag, false)
