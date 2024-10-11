extends Node
class_name MathUtils

static func remap01(a: float, b: float, t: float):
	return (t - a) / (b - a)


static func remap(a: float, b: float, c: float, d: float, t: float):
	return remap01(a, b, t) * (d - c) + c
