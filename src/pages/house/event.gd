extends "res://src/pages/house/house.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.initial_storylet = GameManager.next_event_storylet

#	self.initial_storylet = "house.events.joey_talk2"
	super._ready()
	GameManager.next_event_storylet = ""


func blackscreen(no_back = false):
	var duration = 1.0
	var origin = $Light.color
	var origin_energy = $FireLight.energy
	var tween = self.create_tween()
	tween.set_parallel(true)
	tween.tween_property($Light, "color", Color("#000000"), duration)
	tween.tween_property($FireLight, "energy", 0, duration)

	await tween.finished
	await self.get_tree().create_timer(0.7).timeout

	if not no_back:
		tween = self.create_tween()
		tween.set_parallel(true)
		tween.tween_property($Light, "color", origin, duration)
		tween.tween_property($FireLight, "energy", origin_energy, duration)
		await tween.finished
