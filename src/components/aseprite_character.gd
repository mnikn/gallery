extends CharacterBody2D
signal animation_finished()

@export_dir var character_path = ""
@export var enabled = false
@export var input_control = false

var SPEED = 150.0
var direction = "" # up | down | left | right
var animation = "idle" # idle | walk
var current_animation_name = ""

#var walk_type = "snow-walk"
@export var walk_type = "normal-walk"

func _ready():
	self.direction = "down"
	$Sprite.connect("animation_finished", func (): self.emit_signal("animation_finished"))

func start_animation(new_animation = null):
	var target_direction = self.direction
	if self.direction == "left" or self.direction == "right":
		$Sprite.flip_h = true if target_direction == "left" else false
		target_direction = "horz"
	else:
		$Sprite.flip_h = false
	var new_animation_name = target_direction + "-" + new_animation if new_animation != null else self.animation
	if current_animation_name == new_animation_name:
		return
	if new_animation != null:
		self.animation = new_animation
	$Sprite.stop()
	var animation_name = target_direction + "-" + self.animation
	var animation_path = self.character_path + "/" + animation_name + ".json"
	$Sprite.animation_file = animation_path
	$Sprite.start()
	self.current_animation_name = animation_name
	await $Sprite.animation_finished

func _physics_process(delta):
	if not self.enabled:
		return
		
	if not self.input_control:
		if self.current_animation_name.find("walk") >= 0:
			velocity.x = -1 * SPEED if self.direction == "left" else (1 if self.direction == "right" else 0) * SPEED
			velocity.y = -1 * SPEED if self.direction == "up" else (1 if self.direction == "down" else 0) * SPEED
		else:
			velocity = Vector2.ZERO
		self.move_and_slide()
		return
	var x_direction = Input.get_axis("player_left", "player_right")
	if x_direction and $Sprite.animation_data:
		velocity.x = x_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, INF)
		
	var y_direction = Input.get_axis("player_up", "player_down")
	if y_direction:
		velocity.y = y_direction * SPEED
#		print_debug($Sprite.animation_data.frames[$Sprite.current_frame].duration)
	else:
		velocity.y = move_toward(velocity.y, 0, INF)
		
	if y_direction != 0:
		var target_direction = "up" if y_direction < 0 else "down"
		self.direction = target_direction
		self.start_animation(self.walk_type)
	elif x_direction != 0:
		var target_direction = "right" if x_direction > 0 else "left"
		self.direction = target_direction
		self.start_animation(self.walk_type)
	else:
		self.start_animation("idle")
	
	move_and_slide()

func process_state():
	pass

func face_to(target: Node2D):
	var diff_direction = self.global_position.direction_to(target.global_position)
	if abs(diff_direction.y) >= 0.5 or (abs(diff_direction.y) > abs(diff_direction.x)):
		self.direction = "up" if diff_direction.y < 0 else "down"
	elif abs(diff_direction.x) >= 0.5 or (abs(diff_direction.x) > abs(diff_direction.y)):
		self.direction = "left" if diff_direction.x < 0 else "right"
	await self.start_animation()
