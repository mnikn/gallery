extends Node
signal on_triggerd(body)
signal on_accepted()
signal exited()

const direction_map = {
	"up": 1,
	"down": 2,
	"left": 4,
	"right": 8
}

@export var enabled = true
@export var storylets: Array[String] = []
@export var custom_handle = false
@export var custom_position = true
var current_trigggered_body = null

@export_flags("up", "down", "left", "right") var face_direction = direction_map["down"]

var is_showing_dialogue = false

func set_enabled(val):
	enabled = val
	if not enabled:
		self.close_input_hint()

# Called when the node enters the scene tree for the first time.
func _ready():
	$InputHintWrapper.visible = false
#	$Collision.shape = RectangleShape2D.new()
	if not self.custom_position:
		self.get_parent().connect("collision_changed", self.update_collision)
		self.update_collision()

func update_collision():
	if self.get_parent().get_node("Collision").shape == null:
		return
	var shape = self.get_node("Collision").shape
	shape.size = Vector2(self.get_parent().get_node("Collision").shape.radius * 2 * 1.3, self.get_parent().get_node("Collision").shape.height * 1.3)
	self.position = self.get_parent().get_node("Collision").position

func _on_area_entered(area):
	if not self.enabled:
		return
	if !area.is_in_group("interaction_area") and area != self:
		return
	self.current_trigggered_body = area.get_parent()
	if self.face_direction in direction_map.values():
		if self.face_direction == direction_map["left"] and area.get_parent().direction != 'right':
			return
		if self.face_direction == direction_map["right"] and area.get_parent().direction != 'left':
			return
		if self.face_direction == direction_map["up"] and area.get_parent().direction != 'down':
			return
		if self.face_direction == direction_map["down"] and area.get_parent().direction != 'up':
			return
	self.emit_signal("on_triggerd", area.get_parent())
	if self.custom_handle:
		self.show_input_hint()
		return
	var dialgoue_node = self.get_parent().get_parent().get_node("Dialogue")
	var valid_storylets = StoryUtils.filter_valid_storyles(ArrayUtils.map(self.storylets, func (item): return DataStory.get_storylet(item)), {
		"root": dialgoue_node.context.root,
		"character_map": dialgoue_node.context.character_map,
		"processor": dialgoue_node.processor
	})
	if len(valid_storylets) > 0:
		self.show_input_hint()

func check_can_interact():
	if not self.custom_handle:
		var dialgoue_node = self.get_parent().get_parent().get_node("Dialogue")
		var valid_storylets = StoryUtils.filter_valid_storyles(ArrayUtils.map(self.storylets, func (item): return DataStory.get_storylet(item)), {
			"root": dialgoue_node.context.root,
			"character_map": dialgoue_node.context.character_map,
			"processor": dialgoue_node.processor
		})
		if len(valid_storylets) <= 0:
			return false
	if not (self.face_direction in direction_map.values()) and self.current_trigggered_body:
		return true
	if self.face_direction == direction_map["left"] and self.current_trigggered_body.direction == 'right':
		return true
	if self.face_direction == direction_map["right"] and self.current_trigggered_body.direction == 'left':
		return true
	if self.face_direction == direction_map["up"] and self.current_trigggered_body.direction == 'down':
		return true
	if self.face_direction == direction_map["down"] and self.current_trigggered_body.direction == 'up':
		return true
	return false

func _on_area_exited(area):
	if not self.enabled:
		return
	self.current_trigggered_body = null
	self.close_input_hint()

func show_input_hint():
	if $InputHintWrapper.visible:
		return
	$InputHintWrapper.visible = true
	TweenUtils.show($InputHintWrapper/InputHint, 0.1)

func close_input_hint():
	if not $InputHintWrapper.visible:
		return
	await TweenUtils.hide($InputHintWrapper/InputHint, 0.1)
	$InputHintWrapper.visible = false

func _input(event):
	if not self.enabled:
		return
	if self.current_trigggered_body:
		var new_val = self.check_can_interact()
		var old_can_interact = $InputHintWrapper.visible
		if old_can_interact != new_val:
			if new_val:
				self.show_input_hint()
			else:
				self.close_input_hint()
			return
	if event.is_action_pressed("ui_accept") and $InputHintWrapper.visible and not self.is_showing_dialogue:
		self.set_enabled(false)
		await self.close_input_hint()
		if self.custom_handle:
			self.emit_signal("on_accepted")
			return
		var dialgoue_node = self.get_parent().get_parent().get_node("Dialogue")
		var valid_storylets = StoryUtils.filter_valid_storyles(ArrayUtils.map(self.storylets, func (item): return DataStory.get_storylet(item)), {
			"root": dialgoue_node.context.root,
			"character_map": dialgoue_node.context.character_map,
#			"processor": dialgoue_node.context.processor
		})
		if len(valid_storylets) > 0:
			var origin_enabled_actor = []
			for actor in dialgoue_node.context.character_map.values():
				if actor != null and actor.enabled:
					origin_enabled_actor.push_back(actor)
				if actor != null and actor.enabled:
					actor.get_node("StateManager").change_state("idle")
				if actor != null:
					actor.enabled = false
			dialgoue_node.init(DataStory.storlets[valid_storylets[0].id])
			self.is_showing_dialogue = true
			await dialgoue_node.start()
			if SceneChanger.is_changing:
				return
			self.get_tree().create_timer(0.2).connect("timeout", func ():
				if SceneChanger.is_changing:
					return
				self.is_showing_dialogue = false
				self.set_enabled(true)
				#if self.has_overlapping_areas() and self.check_can_interact():
				if self.check_can_interact():
					self.show_input_hint()
				else:
					self.current_trigggered_body = null
				for actor in origin_enabled_actor:
					actor.enabled = true)
