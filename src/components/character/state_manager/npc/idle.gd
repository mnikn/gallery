extends "res://src/components/character/state_manager/base_state.gd"

func on_enter(_prev_state):
	self.host.play_animation("idle")

func on_exit(_current_state):
	pass

func can_enter_state():
	return true
