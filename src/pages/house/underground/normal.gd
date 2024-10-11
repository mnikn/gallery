extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Dialogue.set_context({
		"character_map": {
			"sheng_qi": $Shenqi,
#			"laisha": $Laisha,
#			"joey": $Joey,
		},
		"root": self
	})
	
	$Shenqi.direction = "right"
#	$Shenqi.start_animation("normal-walk")
