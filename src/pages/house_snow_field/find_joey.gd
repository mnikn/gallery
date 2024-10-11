extends Node2D

var FootstepScene = preload("res://src/components/footstep.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Dialogue.set_context({
		"character_map": {
			"sheng_qi": $Shenqi,
			"joey": $Joey,
		},
		"root": self
	})
	$Dialogue.init(DataStory.get_storylet("house_snow_field.find_joey.initial_talk"))
	$Dialogue.start()

	var footstep = FootstepScene.instantiate()
	footstep.init($Shenqi)
	$MapEffects.add_child(footstep)

	var footstep2 = FootstepScene.instantiate()
	footstep2.init($Joey)
	$MapEffects.add_child(footstep2)
