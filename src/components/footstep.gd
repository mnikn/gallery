extends Line2D

var host = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func init(host):
	self.host = host

func _process(delta):
	if self.host == null:
		return
	if len(self.points) <= 0 or self.points[len(self.points) - 1] != self.host.global_position:
		var pos = self.host.global_position
		pos.y += 60
		self.add_point(pos)
	
#	var camera_pos = $Shenqi/Camera2D.global_position
#	var camera_rect = Rect2(camera_pos.x - 640,camera_pos.y-360, 1280, 720)
#
#	var to_remove_points = []
#	for i in len($Footstep.points):
#		var point = $Footstep.points[i]
#		if not camera_rect.has_point(point):
#			to_remove_points.push_back(point)
