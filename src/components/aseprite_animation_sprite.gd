extends Sprite2D
signal animation_finished()

@export_file var animation_file = '' : set = set_animation_file

var enabled = false
var current_frame = 0
var animation_data = {}
var current_animation_name
var animation_id = 0

func set_animation_file(file):
	animation_file = file
	if len(file) > 0:
		self.animation_data = ResourceManager.load_json(file)
		self.current_frame = 0
		self.texture = ResourceManager.load_texture(self.animation_data.animation.img)

		self.hframes = len(self.animation_data.frames)

func start():
	self.enabled = true
	self.animation_id += 1
	await self.do_animation()

#{ "x": 21, "y": 26, "width": 7, "height": 10, "shapeType": "retangle" }
#{ "x": 19, "y": 16, "width": 12, "height": 7, "shapeType": "retangle" }

func do_animation():
	var frame_data = animation_data.frames
	var old_animation_id = self.animation_id
	while self.current_frame < len(frame_data) and self.enabled:
		self.frame = self.current_frame
		if frame_data[self.current_frame].has("collision"):
			var collision_node = self.get_parent().get_node("Collision")
			var shape = collision_node.shape
#			shape.size.x = frame_data[self.current_frame]["collsion"].width * self.scale.x
#			shape.size.y = frame_data[self.current_frame]["collsion"].height * self.scale.y
			shape.radius = frame_data[self.current_frame]["collision"].width / 2 * self.scale.x
			shape.height = frame_data[self.current_frame]["collision"].height * self.scale.y
			collision_node.position.x = shape.radius + frame_data[self.current_frame]["collision"].x * self.scale.x
			collision_node.position.y = shape.height / 2 + frame_data[self.current_frame]["collision"].y * self.scale.y

			collision_node.position.x -= (self.texture.get_size().x / len(self.animation_data.frames)) * self.scale.x / 2
			collision_node.position.y -= self.texture.get_size().y * self.scale.y / 2
#			print_debug(self.texture.get_size().x / len(self.animation_data.frames))
#			collsion_node.position.x = shape.size.x / 2 + frame_data[self.current_frame]["collsion"].x * self.scale.x
#			collsion_node.position.y = shape.size.y / 2 + frame_data[self.current_frame]["collsion"].y * self.scale.y
			collision_node.shape = shape
			self.get_parent().emit_signal("collision_changed")
		await self.get_tree().create_timer(frame_data[self.current_frame].duration / 1000).timeout
		if old_animation_id != self.animation_id:
			return
		self.current_frame += 1


	if self.current_frame >= len(frame_data):
		if self.animation_data.animation.loop:
			self.current_frame = 0
			self.frame = self.current_frame
			self.do_animation()
		else:
			self.emit_signal("animation_finished")

func stop():
	self.enabled = false
