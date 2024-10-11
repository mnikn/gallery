extends Node
signal finished()

const ProcessorScript = preload("res://src/platforms/story/storylet_processor.gd")
const ChatPanelScene = preload("./chat_panel.tscn")
const TherateModeBarScene = preload("res://src/components/therate_mode_bar.tscn")

var storylet = null
var processor = null
var container = null
var target_map = {}
var context = {}

func set_context(val):
	self.target_map = val.character_map
	self.context = val
	self.processor = ProcessorScript.new()

func init(storylet):
	var tween_duration = 0.2
	var node = TherateModeBarScene.instantiate()
	node.get_node("TherateModeBar/VBoxContainer").scale.y = 0
	node.get_node("TherateModeBar/VBoxContainer2").scale.y = 0
	self.add_child(node)
	var tween = self.create_tween()
	tween.set_parallel(true)
	tween.tween_property(node.get_node("TherateModeBar/VBoxContainer"), "scale:y", 1, tween_duration)
	tween.tween_property(node.get_node("TherateModeBar/VBoxContainer2"), "scale:y", 1, tween_duration)
#	await tween.finished
	
	self.storylet = storylet
	self.processor = ProcessorScript.new()
	self.processor.init(storylet, self.context)
	self.processor.connect("finished", func (): 
		tween = self.create_tween()
		tween.set_parallel(true)
		tween.tween_property(node.get_node("TherateModeBar/VBoxContainer"), "scale:y", 0, tween_duration)
		tween.tween_property(node.get_node("TherateModeBar/VBoxContainer2"), "scale:y", 0, tween_duration)
		await tween.finished
		node.queue_free()
		self.emit_signal("finished")
	)

func start():
	self.target_map["sheng_qi"].enabled = false
	self.next()
	await self.processor.finished
	if not SceneChanger.is_changing:
		self.target_map["sheng_qi"].enabled = true
	
func next():
	for actor_node in self.target_map.values():
		if actor_node != null and actor_node.has_node("ChatPanel"):
			actor_node.get_node("ChatPanel").queue_free()
			await get_tree().create_timer(0.0).timeout
	var node = await self.processor.next()
	self.update_view(node)
				
func update_view(node = null):
	for actor_node in self.target_map.values():
		if actor_node != null and actor_node.has_node("ChatPanel"):
			actor_node.get_node("ChatPanel").queue_free()
			await get_tree().create_timer(0.0).timeout
#	var node = self.processor.current_node
	if node == null:
		if self.processor.current_node == null:
			for actor_node in self.target_map.values():
				if actor_node != null and actor_node.has_node("ChatPanel"):
					actor_node.get_node("ChatPanel").queue_free()
		return
	
	if node.data.type == "sentence" or node.data.type == "branch":
		var chat_panel = ChatPanelScene.instantiate()
		var container = CanvasLayer.new()
		container.layer = 5
		container.name = "ChatPanel"
		container.add_child(chat_panel)
#		print_debug(self.target_map[node.data.actor].get_global_transform_with_canvas())
		self.target_map[node.data.actor].add_child(container)
		chat_panel.global_position = self.target_map[node.data.actor].get_global_transform_with_canvas().origin
#		chat_panel.global_position.x += 65
#		chat_panel.global_position.y += 65
		chat_panel.global_position.y -= chat_panel.size.y + 50
		if self.target_map[node.data.actor].get_global_transform_with_canvas().origin.x >= 640:
			var style = null
			if self.target_map[node.data.actor].get_global_transform_with_canvas().origin.y <= 320:
				style = chat_panel.RightTop
				chat_panel.global_position.y += 250
			else:
				style = chat_panel.RightBottom
			chat_panel.global_position.x -= 320
#			chat_panel.set("theme_override_styles/panel", style)
			chat_panel.get_node("Bg").texture = style
		else:
			var style = StyleBoxTexture.new()
			if self.target_map[node.data.actor].get_global_transform_with_canvas().origin.y <= 320:
				style = chat_panel.LeftTop
				chat_panel.global_position.y += 250
			else:
				style = chat_panel.LeftBottom
#			chat_panel.set("theme_override_styles/panel", style)
			chat_panel.get_node("Bg").texture = style
		if node.data.type == "sentence":
			await chat_panel.show_sentence(node.data)
		elif node.data.type == "branch":
			var options = self.processor.show_options(node.id)
			chat_panel.show_branch(node.data, options, func (opt):
				await self.processor.choose_option(opt.sourceId, opt.targetId)
				await self.update_view(self.processor.current_node))

func _input(event):
	if self.storylet == null or self.processor.processing:
		return
	if event.is_action_pressed("ui_accept"):
		for actor_node in self.target_map.values():
			if actor_node != null and actor_node.has_node("ChatPanel") and not actor_node.get_node("ChatPanel").get_node("ChatPanel").complete:
				await actor_node.get_node("ChatPanel").get_node("ChatPanel").completed
				return
		self.next()
