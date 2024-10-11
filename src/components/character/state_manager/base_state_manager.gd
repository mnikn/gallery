extends Node
class_name GameStateTree

@export var enabled = true

var host = null
var current_state = null

func _ready():
	self.host = self.get_parent()
	for state in self.get_children():
		state.state_manager = self
		state.host = self.host
	
func _process(_delta):
	if not self.enabled:
		return
	for state in self.get_children():
		if state.can_enter_state():
			if not state.enabled:
				state.enabled = true
				if self.current_state != null:
					self.current_state.enabled = false
					self.current_state.on_exit(state)
				self.current_state = state
				state.on_enter(self.current_state)
				break
		elif state.enabled:
			state.enabled = false
			state.on_exit(self.current_state)
			self.current_state = null

func change_state(state):
	var target_state = ArrayUtils.find(self.get_children(), func (item): return item.name == state.capitalize())
	if target_state == null:
		return
	for prev_state in self.get_children():
		if prev_state.name != state.to_lower():
			prev_state.enabled = false
			prev_state.on_exit(self.current_state)
	target_state.enabled = true
	target_state.on_enter(self.current_state)
	self.current_state = target_state
