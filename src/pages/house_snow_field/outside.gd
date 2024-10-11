extends Node2D

var FootstepScene = preload("res://src/components/footstep.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Dialogue.set_context({
		"character_map": {
			"sheng_qi": $Shenqi,
			"laisha": $Laisha,
			"joey": $Joey,
		},
		"root": self
	})
	$Dialogue.init(DataStory.get_storylet("house_snow_field.initial.initial_talk"))
	$Dialogue.start()

	var footstep = FootstepScene.instantiate()
	footstep.init($Shenqi)
	$MapEffects.add_child(footstep)



func camera_to_house():
	$Shenqi/Camera2D.global_position = $HouseArea/CollisionShape2D.global_position

func camera_to_character():
	$Shenqi/Camera2D.global_position = $Shenqi.global_position

func _on_house_area_area_entered(area):
	if area.is_in_group("interaction_area") and StoryTracker.cnhs("house_snow_field.initial.talk_laisha", "know_house") and not StoryTracker.shs("house_snow_field.initial.see_house"):
		$Dialogue.init(DataStory.get_storylet("house_snow_field.initial.see_house"))
		$Dialogue.start()
