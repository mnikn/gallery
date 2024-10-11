extends Node
class_name RandomUtils

static func dice(rate: float) -> bool:
	return randf() < rate

static func dice_range(arr: Array) -> float:
	if len(arr) == 1:
		return arr[0]
	var min_v = ceil(arr[0]);
	var max_v = floor(arr[1]);
	return floor(randf() * (max_v - min_v + 1)) + min_v;

static func dice_range_num(arr: Array, precision = 0.1) -> float:
	if len(arr) == 1:
		return arr[0]
		
	var v = min(max(randf() * (arr[1] - arr[0]) + arr[0], arr[0]), arr[1])
	if precision == 0:
		return floor(v)
	return snapped(v, precision)

static func choice_one(arr: Array):
	if len(arr) == 0:
		return null
	if len(arr) == 1:
		return arr[0]
	var i = randi() % len(arr)
	return arr[i]
