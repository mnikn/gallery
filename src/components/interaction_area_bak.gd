extends Node
signal on_triggerd(body)
signal on_accepted()
signal exited()

class InteractDirection extends Resource:
	var left = false
	var right = false
	var up = false
	var down = false

@export var enabled = true
@export var storylets: Array[String] = []
@export var custom_handle = false
@export var custom_position = true

@export_flags("up", "down", "left", "right") var interact_direction
const direction_map = {
	"up": 1,
	"down": 2,
	"left": 4,
	"right": 8
}

var is_entered = false
var is_showing_dialogue = false

func set_enabled(val):
	enabled = val
	if not enabled:
		await TweenUtils.hide($CanvasLayer/Content, 0.1)
		$CanvasLayer/Content.visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Content.visible = false

func _process(delta):
	var collision = $Collision
	if not self.custom_position:
		$CanvasLayer/Content.global_position.x = self.get_parent().get_global_transform_with_canvas().origin.x - $CanvasLayer/Content.size.x / 2
		$CanvasLayer/Content.global_position.y = self.get_parent().get_global_transform_with_canvas().origin.y - ((collision.shape.size.y / 2 + 30) if collision != null else 0)

func _on_area_entered(area):
#	if area.is_in_group("interaction_area") and area != self and self.interact_direction != null and (self.interact_direction & direction_map[area.get_parent().direction]) != 0:
	self.emit_signal("on_triggerd", area.get_parent())
	if self.custom_handle:
		$CanvasLayer/Content.visible = true
		TweenUtils.show($CanvasLayer/Content, 0.1)
		self.is_entered = true
		return
	var dialgoue_node = self.get_parent().get_parent().get_node("Dialogue")
	var valid_storylets = StoryUtils.filter_valid_storyles(ArrayUtils.map(self.storylets, func (item): return DataStory.get_storylet(item)), {
		"root": dialgoue_node.context.root,
		"character_map": dialgoue_node.context.character_map,
		"processor": dialgoue_node.processor
	})
	if len(valid_storylets) > 0:
		$CanvasLayer/Content.visible = true
		TweenUtils.show($CanvasLayer/Content, 0.1)
		self.is_entered = true


func _on_area_exited(area):
	self.is_entered = false
	await TweenUtils.hide($CanvasLayer/Content, 0.1)
	$CanvasLayer/Content.visible = false

	
func _input(event):
	var x_direction = Input.get_axis("player_left", "player_right")
	var y_direction = Input.get_axis("player_up", "player_down")
	if x_direction != 0 or y_direction != 0:
		var direction = ""
		if y_direction != 0:
			direction = "up" if y_direction < 0 else "down"
		elif x_direction != 0:
			direction = "right" if x_direction > 0 else "left"
		for area in self.get_overlapping_areas():
			if len(direction) > 0 and area.is_in_group("interaction_area") and area != self and self.interact_direction != null and (self.interact_direction & direction_map[direction]) != 0:
				self._on_area_entered(area)
			else:
				self._on_area_exited(area)
#	else:
#		for area in self.get_overlapping_areas():
#			self._on_area_exited(area)
	
	if event.is_action_pressed("ui_accept") and self.enabled and self.is_entered and not self.is_showing_dialogue:
		self.set_enabled(false)
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
					actor.start_animation("idle")
				if actor != null:
					actor.enabled = false
			dialgoue_node.init(DataStory.storlets[valid_storylets[0].id])
			self.is_showing_dialogue = true
			await dialgoue_node.start()
			self.get_tree().create_timer(0.5).connect("timeout", func ():
				self.is_showing_dialogue = false
				self.set_enabled(true)
				for actor in origin_enabled_actor:
					actor.enabled = true)
