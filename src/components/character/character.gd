extends CharacterBody2D
signal collision_changed()

@export_dir var character_path = ""

var direction = "down" : set = set_direction
var current_animation = "idle"
@export var enabled = true : set = set_enabled

# Called when the node enters the scene tree for the first time.
func _ready():
	$StateManager.enabled = self.enabled
	$Collision.shape = CapsuleShape2D.new()
	self.do_play_animation()

func play_animation(animation: String):
	var animation_name = self.direction + '-' + animation
	var old_animation_name = self.direction + '-' + self.current_animation
	
	if old_animation_name == animation_name:
		return
	self.current_animation = animation
	
	await self.do_play_animation()

func do_play_animation():
	var target_direction = self.direction
	if self.direction == 'left' or self.direction == 'right':
		target_direction = 'horz'
	var animation_name = target_direction + '-' + self.current_animation
	var animation_path = self.character_path + "/" + animation_name + ".json"
	$Skin.animation_file = animation_path
	await $Skin.start()

func set_direction(new_direction: String):
	$Skin.flip_h = (new_direction == 'left')
	if direction != new_direction:
		direction = new_direction
		self.do_play_animation()
	direction = new_direction

func set_enabled(val):
	if not self.has_node("StateManager"):
		return
	enabled = val
	$StateManager.enabled = val

func set_state(state):
	$StateManager.change_state(state)
