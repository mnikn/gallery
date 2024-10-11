extends Node

var state_manager = null
var host = null
@export var enabled = false

func _ready():
	if self.enabled:
		self.on_enter(null)

func _process(_delta):
	if not self.enabled:
		return
	self.do_process(_delta)

func on_enter(_prev_state):
	pass

func on_exit(_current_state):
	pass

func do_process(_delta):
	pass

func can_enter_state() -> bool:
	return false
