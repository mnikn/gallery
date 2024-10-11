extends Node

class Storylet extends Object:
	var id = ""
	var group_id = ""
	var nodes = {}
	var links = {}
	var storylet_id = "" :get = get_storylet_id
	
	func get_storylet_id():
		var parent_group = ArrayUtils.find(DataStory.groups.values(), func (item):
			return item.id == group_id)
		var group_prefix = parent_group.path + "." if parent_group != null else ""
		return group_prefix + self.get_root_node().data.extraData.storylet_id
	
	func get_root_node():
		var child_keys = {}
		for link in self.links.values():
			child_keys[link.targetId] = true
		var roots = []
		for node in self.nodes.values():
			if not child_keys.has(node.id): 
				roots.push_back(node)
				
		if len(roots) > 0:
			return roots[0]
		return null
	
	func get_node_children(node_id: String):
		var data = self.nodes[node_id]
		
		var children = []
		for link in self.links.values():
			if link.sourceId == node_id:
				children.push_back(self.nodes[link.targetId])
		return children
		
	func get_children_links(node_id: String):
		var data = self.nodes[node_id]
		var children = []
		for link in self.links.values():
			if link.sourceId == node_id:
				children.push_back(link)
		return children
	
	func get_node_parent(node_id: String):
		var data = self.nodes[node_id]
		var children = []
		for link in self.links.values():
			if link.targetId == node_id:
				children.push_back(link)
		return self.nodes[children[0].targetId] if len(children) > 0 else null
		
	func duplicate():
		var instance = Storylet.new()
		instance.id = self.id
		instance.nodes = self.nodes
		instance.links = self.links
		return instance

var data = {}

var storlets := {}
var storlet_groups = {}
var groups = {}
var actors := {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var raw_data = FileUtils.read_json_file("res://data/story/story.st")
	var format_data = {}
	for key in self.data.keys():
		var item = self.data[key]
		var instance = Storylet.new()
		instance.id = item.id
		instance.group_id = item.groupId
		instance.nodes = item.nodes
		instance.links = item.links
		format_data[key] = instance
		
	for group in raw_data.story.storyletGroups:
		self.storlet_groups[group.id] = group
	
	self.set_group(raw_data.story.storyletGroups)
		
	for data_container in raw_data.story.storylets:
		var storylet_data = data_container.data
		var instance = Storylet.new()
		instance.id = storylet_data.id
		instance.group_id = data_container.groupId
		instance.nodes = storylet_data.nodes
		instance.links = storylet_data.links
		self.storlets[instance.id] = instance
	
	for actor in raw_data.projectSettings.actors:
		self.actors[actor.id] = actor
	
	self.data = format_data

#	var s = self.get_storylets_in_groups("main_line/village1/chat")
#	print_debug(s)

func set_group(group_arr, prefix = ""):
	var prefix_conn = prefix + "." if len(prefix) > 0 else ""
	for item in group_arr:
		self.groups[prefix_conn + item.name] = item
		self.groups[prefix_conn + item.name].path = prefix_conn + item.name
		self.set_group(item.children, prefix_conn + item.name)

func get_actor_pic(actor_id: String, portrait_id: String):
	var portraits = self.actors[actor_id].portraits
	var portrait = ArrayUtils.find(portraits, func (item): return item.id == portrait_id)
	return portrait.pic
	
#func get_storylet(storylet_id: String):
#	for s in self.storlets.values():
##		print(ObjectUtils.get_value(s.get_root_node(), "data.extraData"))
#		if ObjectUtils.get_value(s.get_root_node(), "data.extraData.storylet_id") == storylet_id:
#			return s
#	return null

func get_storylet_with_group(group, storylet_id):
	var storylets = self.get_storylets_in_groups(group)
	return ArrayUtils.find(storylets, func (item): return item.get_root_node().data.extraData.storylet_id == storylet_id)
	
func get_storylet(storylet_id: String):
	var split_arr = storylet_id.split(".")
	if len(split_arr) > 1: 
		var group = self.get_group(ArrayUtils.join(split_arr.slice(0, len(split_arr) - 1), "."))
		if group == null:
			return null
		return ArrayUtils.find(self.storlets.values(), func (item): return item.group_id == group.id and item.get_root_node().data.extraData.storylet_id == split_arr[len(split_arr)-1])
	else:
		return ArrayUtils.find(self.storlets.values(), func (item): return item.get_root_node().data.extraData.storylet_id == storylet_id)
#		var current_group = split_arr[0]
#		ArrayUtils.find(parent_group.children, func (item): return item.name == cur_part)


func get_group(group: String, parent_group = null):
	var split_arr = group.split(".")
	var target_group = null
	
	var do_find_group = func (group_name, parent):
		var cur_part = group_name
		var res = null
		if parent == null:
			var root_groups = ArrayUtils.filter(self.storlet_groups.values(), func (item): return item.parentId == null)
			res = ArrayUtils.find(root_groups, func (item): return item.name == cur_part)
		else:
			res = ArrayUtils.find(parent_group.children, func (item): return item.name == cur_part)
		return res
	
	if len(split_arr) <= 1:
		return do_find_group.call(split_arr[0], parent_group)
	else:
		target_group = self.get_group(ArrayUtils.join(split_arr.slice(1), "."), do_find_group.call(split_arr[0], parent_group))
	return target_group

func get_storylets_in_groups(group: String, parent_group = null):
	var arr = group.split("/")
	if len(arr) <= 1:
		var cur_part = arr[0]
		var target_group = null
		
		if parent_group == null:
			var root_groups = ArrayUtils.filter(self.storlet_groups.values(), func (item): return item.parentId == null)
			target_group = ArrayUtils.find(root_groups, func (item): return item.name == cur_part)
		else:
			target_group = ArrayUtils.find(parent_group.children, func (item): return item.name == cur_part)
		var res = []
		if target_group != null:
			res = ArrayUtils.filter(self.storlets.values(), func(item): return item.group_id == target_group.id)
		return res
	var cur_part = arr[0]
	var next_parent = parent_group
	
	if parent_group == null:
		var root_groups = ArrayUtils.filter(self.storlet_groups.values(), func (item): return item.parentId == null)
		next_parent = ArrayUtils.find(root_groups, func (item): return item.name == cur_part)
	else:
		next_parent = ArrayUtils.find(next_parent.children, func (item): return item.name == cur_part)
	
	return self.get_storylets_in_groups(ArrayUtils.join(arr.slice(1), "/"), next_parent)
