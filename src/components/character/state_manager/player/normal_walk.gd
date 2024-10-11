extends "res://src/components/character/state_manager/base_state.gd"

@export var speed = 200

func on_enter(_prev_state):
	self.host.play_animation("normal-walk")

func on_exit(_current_state):
	self.host.velocity = Vector2.ZERO

func do_process(_delta):
	if not self.enabled:
		return
	if not self.host.current_animation == "normal-walk":
		self.host.play_animation("normal-walk")
	
	var x_direction = Input.get_axis("player_left", "player_right")
	var y_direction = Input.get_axis("player_up", "player_down")
	if y_direction != 0:
		var target_direction = "up" if y_direction < 0 else "down"
		self.host.direction = target_direction
	elif x_direction != 0:
		var target_direction = "right" if x_direction > 0 else "left"
		self.host.direction = target_direction
	
	self.host.velocity.x = -1 * speed if self.host.direction == "left" else (1 if self.host.direction == "right" else 0) * speed
	self.host.velocity.y = -1 * speed if self.host.direction == "up" else (1 if self.host.direction == "down" else 0) * speed
	
	self.host.move_and_slide()
	

func can_enter_state() -> bool:
	return Input.get_axis("player_left", "player_right") != 0 or Input.get_axis("player_up", "player_down") != 0
