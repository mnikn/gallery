extends Panel
signal exit()

var TaskItemScene = preload("./task_item.tscn")
var current_focus_item = null

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/ConfirmPanel.visible = false
	var storylets = StoryUtils.filter_valid_storyles(ArrayUtils.map(DataTask.data, func (item): 
		return DataStory.get_storylet(item.target_storylet)))
	storylets = ArrayUtils.map(storylets, func (item): return item.get_storylet_id())
	var items = ArrayUtils.filter(DataTask.data, func (item):
		return item.target_storylet in storylets)
	for item in items:
		var node = TaskItemScene.instantiate()
		node.text = tr(item.name)
		node.set_meta("data", item)
		node.connect("focus_entered", func (): 
			self.current_focus_item = node
			$MarginContainer/HBoxContainer/PanelContainer/MarginContainer/Desc.text = tr(item.desc))
		node.connect("pressed", func ():
			$CanvasLayer/ConfirmPanel.global_position = node.global_position
			$CanvasLayer/ConfirmPanel.global_position.x += 20
			$CanvasLayer/ConfirmPanel.global_position.y += 50
			$CanvasLayer/ConfirmPanel/MarginContainer/HBoxContainer/Confirm.grab_focus()
			MaskUtils.show_mask(self)
			$CanvasLayer/ConfirmPanel.visible = true
			await self.get_tree().create_timer(0.0).timeout
			self.get_parent().get_parent().get_node("Light").color = self.get_parent().get_parent().get_node("Light").color
			)
		$MarginContainer/HBoxContainer/ScrollContainer/VBoxContainer.add_child(node)
		
	await self.get_tree().create_timer(0.0).timeout
	for item in $MarginContainer/HBoxContainer/ScrollContainer/VBoxContainer.get_children():
		if not item.disabled:
			item.grab_focus()
			return


func _on_confirm_pressed():
	$CanvasLayer/ConfirmPanel.visible = false
	MaskUtils.close_mask(self)
#	self.current_focus_item.grab_focus()
	GameManager.next_event_storylet = self.current_focus_item.get_meta("data").target_storylet
	SceneChanger.change_scene(Constants.SCENES.HOUSE_EVENT)

func _on_cancel_pressed():
	$CanvasLayer/ConfirmPanel.visible = false
	MaskUtils.close_mask(self)
	self.current_focus_item.grab_focus()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if $CanvasLayer/ConfirmPanel.visible:
			self._on_cancel_pressed()
		else:
			self.emit_signal("exit")
