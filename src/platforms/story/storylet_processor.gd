extends Node
signal finished()

var current_node = null
var current_storylet = null
var context = {}
var processing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func init(storylet, params = {}):
	self.current_storylet = storylet.duplicate()
	self.context = params
	self.context.processor = self
	
	var root_node = self.current_storylet.get_root_node()
	
#	self.eval_process_var_code(root_node.data.processVar)
		
#	print_debug(ExpressionUtils.eval(root_node.data.processVar, {
#		"manager": "GameManager",
#		"tracker": "StoryTracker"
#	}, context))
#	self.current_node = root_node
	await self.jump_to_node(root_node.id)

func next():
	if self.current_storylet == null or self.current_node == null:
		return
	
	if self.current_node.data.type == "branch":
		return
	
	self.processing = true
	var children = ArrayUtils.filter(self.current_storylet.get_node_children(self.current_node.id), 
		func (item): return true if ObjectUtils.get_value(item, "data.enableCheck") == null or len(item.data.enableCheck) <= 0 else await self.eval_process_code(item.data.enableCheck, item)) 
	
	var next_transfer_node = children[0] if len(children) > 0 else null
	self.current_node = next_transfer_node
	if next_transfer_node != null:
		var res = await self.jump_to_node(next_transfer_node.id)
		self.processing = false
		return res
	else:
		self.emit_signal("finished")
	self.processing = false
	return next_transfer_node

func jump_to_node(node_id: String):
	self.processing = true
	var data = ObjectUtils.copy(self.current_storylet.nodes[node_id])
	self.current_node = data
	self.context.current_node = data
	
	StoryTracker.add_node_extra_prop_count(self.current_node.id, "show_times")
	await self.eval_process_context_code(ObjectUtils.get_value(data, "data.onJumpProcess"))
	
	if self.current_node != null and self.current_node.data.type == "custom":
		if self.current_node.data.customType == "action" and self.current_node.data.extraData.type == "custom":
			await self.eval_process_code(self.current_node.data.extraData.process.value)
			var res = await self.next()
			self.processing = false
			return res
		if self.current_node.data.customType == "action" and self.current_node.data.extraData.type == "jump_to_node":
			var target_node = null
			if self.current_node.data.extraData.jump_type == "direct":
				target_node = ArrayUtils.find(self.current_storylet.nodes.values(), 
					func (item):
						return ObjectUtils.get_value(item, "data.customNodeId") == self.current_node.data.extraData.target_node_id)
			else:
				var target_node_id = await self.eval_process_code(self.current_node.data.extraData.get_target_node_id.value)
				target_node = ArrayUtils.find(self.current_storylet.nodes.values(), 
					func (item):
						return ObjectUtils.get_value(item, "data.customNodeId") == target_node_id)
			var res = await self.jump_to_node(target_node.id)
			self.processing = false
			return res
	
	if data.data.has("content"):
		var inner_params = { "tracker": "StoryTracker", "manager": "GameManager" }
		var outer_params = self.context
		data.data.content = tr(data.data.content)
		data.data.content = TextUtils.process_visible_tag(data.data.content, inner_params, outer_params)
		data.data.content = TextUtils.process_var_tag(data.data.content, inner_params, outer_params)
	if ObjectUtils.get_value(data.data, "extraData.dialogues"):
		for d in ObjectUtils.get_value(data.data, "extraData.dialogues"):
			var inner_params = { "tracker": "StoryTracker", "manager": "GameManager" }
			var outer_params = self.context
			d.content = tr(d.content)
			d.content = TextUtils.process_visible_tag(d.content, inner_params, outer_params)
			d.content = TextUtils.process_var_tag(d.content, inner_params, outer_params)
	self.processing = false
	return data

func show_options(branch_node_id: String):
	var branch_data = self.current_storylet.nodes[branch_node_id]
	
	var children = ArrayUtils.copy(self.current_storylet.get_children_links(branch_node_id))
	children = ArrayUtils.map(children, func (item):
		if item.data.has("controlCheck") and len(item.data.controlCheck) > 0:
			var res = await self.eval_process_code(item.data.controlCheck, item)
			item.data.enabled = res
		return item)
	children = ArrayUtils.filter(children, func (item):
		if item.data.has("enabled") and item.data.controlType == "visible":
			return item.data.enabled
		return true)
	var inner_params = { "tracker": "StoryTracker", "manager": "GameManager" }
	var outer_params = self.context
	for child in children:
		child.data.optionName = TextUtils.process_visible_tag(tr(child.data.optionName), inner_params, outer_params)
		child.data.optionName = TextUtils.process_var_tag(tr(child.data.optionName), inner_params, outer_params)
		StoryTracker.add_node_extra_prop_count(child.targetId, "show_times")
		StoryTracker.add_link_extra_prop_count(child.sourceId, child.targetId, "show_times")
	return children

func choose_option(source_id: String, target_id: String):
#	self.current_storylet.links[link_id].targetId
	var link_id = source_id + "-" + target_id
	var node_data = self.current_storylet.nodes[self.current_storylet.links[link_id].targetId]
	StoryTracker.add_node_extra_prop_count(node_data.id, "triggered_times")
	StoryTracker.add_link_extra_prop_count(source_id, target_id, "triggered_times")
	return await self.jump_to_node(node_data.id)
#	self.current_node = node_data
#	return self.next()
	
func eval_process_context_code(code):
	if code != null and len(code) > 0:
		var res = await ExpressionUtils.eval(code, { "tracker": "StoryTracker", "manager": "GameManager" }, self.context)
		if res != null:
			self.context = ObjectUtils.assign(self.context, res)

func eval_process_code(code, current_process_node = null):
	if code != null and len(code) > 0:
		var res = await ExpressionUtils.eval(code, { "tracker": "StoryTracker", "manager": "GameManager", }, ObjectUtils.assign(self.context, { "current_process_node": current_process_node }))
		return res
