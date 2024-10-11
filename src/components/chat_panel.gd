extends Control
signal completed()

const Speed = 0.6
var complete = false
var current_word_index = 0
var data = null

var LeftBottom = preload("res://assets/ui/chat_panel/left-bottom.png") 
var RightBottom = preload("res://assets/ui/chat_panel/right-bottom.png") 
var LeftTop = preload("res://assets/ui/chat_panel/left-top.png") 
var RightTop = preload("res://assets/ui/chat_panel/right-top.png") 
var OptionItemScene = preload("./chat_panel_option.tscn")

func _ready():
	$Pointer.visible = false
	RenderingServer.canvas_item_set_z_index(self.get_canvas_item(), 10)

func show_sentence(data):
	$Options.visible = false
	if $Bg.texture == LeftTop or $Bg.texture == RightTop:
		$ContentWrapper.position.y += 20
		$Name.position.y += 20
		$Pointer.position.y += 20
	self.data = data
	if data.actor != null:
		$Name.text = tr(DataStory.actors[data.actor].name)
		
	$ContentWrapper/Content.visible_characters = 0
	$ContentWrapper/Content.text = tr(data.content)
#	tween.tween_property($Content, "visible_characters", len($Content.text), Speed)
#	await tween.finished

	await self.tween_content()
	self.complete = true
	self.emit_signal("completed")
	
	$Pointer.visible = true
	self.tween_pointer_position()
	
func show_branch(data, options, on_option_select):
	$Options.visible = false
	$Bg.size.y = 105
	$ContentWrapper.position.y -= 5
	$Options.position.y -= 5
	if $Bg.texture == LeftTop or $Bg.texture == RightTop:
		$ContentWrapper.position.y += 10
		$Options.position.y += 10
		$ContentWrapper/Content.position.y += 20
		$Name.position.y += 20
		$Pointer.position.y += 20
	self.data = data
	if data.actor != null:
		$Name.text = tr(DataStory.actors[data.actor].name)
	
	$ContentWrapper/Content.visible_characters = 0
	$ContentWrapper/Content.text = tr(data.content)
	
	for opt in options:
		var opt_node = self.OptionItemScene.instantiate()
		if opt.data.has("enabled"):
			opt_node.disabled = !opt.data.enabled
		opt_node.text = tr(opt.data.optionName)
		opt_node.connect("pressed", func ():
			await on_option_select.call(opt))
		$Options.add_child(opt_node)

	await self.tween_content()
#	self.complete = true
#	self.emit_signal("completed")
	$Options.visible = true
	
	for child in $Options.get_children():
		if not child.disabled:
			child.grab_focus()
			break

func tween_content():
	if $ContentWrapper/Content.visible_characters >= len($ContentWrapper/Content.text):
		return
	
	var contentSpeed = ObjectUtils.get_value(self.data.contentSpeed, OS.get_locale_language(), [])
	var current_word_speed = contentSpeed[self.current_word_index] if len(contentSpeed) > self.current_word_index else 1
	current_word_speed = current_word_speed if current_word_speed != null else 1

	await self.get_tree().create_timer(0.05 / current_word_speed).timeout
	$ContentWrapper/Content.visible_characters += 1
	self.current_word_index += 1
	await self.tween_content()

func tween_pointer_position():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_EXPO)
	tween.set_ease(Tween.EASE_OUT)
	var origin_pos = $Pointer.position
	tween.tween_property($Pointer, "position:y", origin_pos.y + 3, 0.2)
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property($Pointer, "position:y", origin_pos.y, 0.4)
	
	await tween.finished
	self.tween_pointer_position()
