extends Node2D

@export var initial_storylet = ""


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

	$Shenqi.set_state("idle")
	$Joey.set_state("idle")
	$Laisha.set_state("idle")

	var fire = GameManager.data.house_is_fire
	if fire:
		$FireLight.visible = true
		$AnimationPlayer.play("fire_wave")
		$Light.color = "#c0c4bf"
		$FirePlace.start("fire","res://assets/scenes/fireplace-fire.png", FileUtils.read_json_file("res://assets/scenes/fireplace-fire.json"))
	else:
		$FireLight.visible = false
		$Light.color = "#86a9c4"
		$FirePlace.start("normal","res://assets/scenes/fireplace-normal.png", FileUtils.read_json_file("res://assets/scenes/fireplace-normal.json"))

	if self.initial_storylet:
		$Dialogue.init(DataStory.get_storylet(self.initial_storylet))
		$Dialogue.start()
