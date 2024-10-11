extends "res://src/pages/house/house.gd"

var TaskScene = preload("res://src/pages/house/components/task_panel.tscn")

func show_task():
#	MaskUtils.show_mask(self)
	if GameManager.data.house_is_fire:
		var tween = self.create_tween()
		$AnimationPlayer.stop()
		tween.tween_property($FireLight, "energy", 0.2, 0.1)
		$Light.color = "#525452"
	else:
		$Light.color = "#28333b"
	var node = self.TaskScene.instantiate()
	$GUI.add_child(node)
	await TweenUtils.show(node, 0.1)
	await node.exit
#	MaskUtils.close_mask(self)
	if GameManager.data.house_is_fire:
		var tween = self.create_tween()
		tween.tween_property($FireLight, "energy", 1, 0.1)
		$Light.color = "#c0c4bf"
		$AnimationPlayer.play("fire_wave")
	else:
		$Light.color = "#86a9c4"
	await TweenUtils.hide(node, 0.1)
	node.queue_free()

#	await node.connect("exit", func ():
#		MaskUtils.close_mask(self)
#		node.queue_free())
