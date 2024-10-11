extends Node


var data = []

# Called when the node enters the scene tree for the first time.
func _ready():
	self.data = FileUtils.read_json_file("res://data/task.json")
