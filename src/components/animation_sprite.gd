extends Sprite2D
signal on_data(data)
signal animation_finished()

var cel_data = {}
var enabled = false
var loop = false
var current_frame = 0
var animation_data = {}
var current_timer = null
var current_animation_name

func start(animation_name, texture_path, animation_data):
	self.current_animation_name = animation_name
#	if animation_name[0] == "%":
#		self.loop = true
#		animation_name = animation_name.substr(1,)
	self.animation_data = animation_data
	var frame_data = animation_data.frames
	self.texture = ResourceManager.load_texture(texture_path)
	self.hframes = len(frame_data)
#	var tag = ArrayUtils.find(animation_data.meta.frameTags, func (item): return item.name == animation_name)
	self.loop = animation_data.animation.loop
#	var offset = tag.from
#	for layer in animation_data.meta.layers:
#		for cel in layer.cels:
#			self.cel_data[String(cel.frame - offset)] = cel.data

	self.current_frame = 0
	self.frame = self.current_frame
	self.enabled = true
#	TweenUtils.show(self, 0.3, { "scale": false, "modulate": true })
#	await self.get_tree().create_timer(0.2).timeout
	
	self.start_animation()

func start_animation():
	self.enabled = true
	var frame_data = animation_data.frames
	var animation_name = self.current_animation_name
	while self.current_frame < len(frame_data) and self.enabled:
		self.frame = self.current_frame
#		if self.cel_data.has(self.current_frame.to_string()):
#			self.emit_signal("on_data", self.cel_data[self.current_fram e.to_string()])
#		yield(self.get_tree().create_timer(frame_data[self.current_frame-1].duration / 1000), "timeout") 
		await self.get_tree().create_timer(frame_data[self.current_frame].duration / 1000).timeout
		if animation_name != self.current_animation_name:
			return
		self.current_frame += 1
		
		
	if self.current_frame >= len(frame_data):
		if self.loop:
			self.current_frame = 0
			self.frame = self.current_frame
			self.start_animation()
		else:
			self.emit_signal("animation_finished")

func stop():
	self.enabled = false
	self.loop = false
