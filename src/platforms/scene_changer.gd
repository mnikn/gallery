extends Node
signal change_finished()
var scene
var is_changing = false

func _ready():
	$ColorRect.size = Vector2(0,0)
	$ColorRect.color = Color(255,255,255,0)
	$ColorRect.visible = false

func change_scene(scene: String, animation = "fade"):
	self.scene = scene
	self.is_changing = true
	
#	var nodes = NodeUtils.get_all_children(self.get_tree().root)
#	for node in nodes:
#		if node is AudioStreamPlayer:
#			TweenUtils.audio_fade_out(node)

#	var cursor = self.get_tree().root.find_node("GameCursor", true, false)
#	if cursor != null:
#		TweenUtils.visible_fade_out(cursor, 1)
	$AnimationPlayer.play("fade")
	await $AnimationPlayer.animation_finished
	self.is_changing = false
	self.emit_signal("change_finished")

func _next_scene():
#	var cursor = self.get_tree().root.find_node("GameCursor", true, false)
#	# reset cursor shape
#	self.get_viewport().warp_mouse(Vector2($ColorRect.get_global_mouse_position().x + 0.0001, $ColorRect.get_global_mouse_position().y))
#	if cursor != null:
#		TweenUtils.visible_fade_in(cursor, 1)
		
#	var main = self.get_tree().root.find_node("Main", true, false)
#	for node in main.get_children():
#		if node.name != "UI":
#			node.queue_free()
#	var scene_node = load(scene).instance()
#	main.add_child(scene_node)
#	self.change_scene(scene)
	self.get_tree().change_scene_to_file(scene)
#	self.get_tree().change_scene(scene)
