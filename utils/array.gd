extends Node
class_name ArrayUtils

static func filter(arr: Array, fn: Callable) -> Array:
	var res = []
	for item in arr:
		if fn.call(item):
			res.push_back(item)
	return res
	
static func filterv2(arr: Array, fn: Callable) -> Array:
	var res = []
	for item in arr:
		if fn.call(item):
			res.push_back(item)
	return res

static func copy(obj: Array) -> Array:
	var res = []
	for item in obj:
		res.push_back(ObjectUtils.copy(item))
	return res

static func find(arr: Array, fn: Callable):
	var res =  filterv2(arr, fn)
	if len(res) > 0:
		return res[0]
	return null
	
static func concat(arr1: Array, arr2: Array) -> Array:
	var res = []
	for i in arr1:
		res.push_back(i)
	for i in arr2:
		res.push_back(i)
	return res

static func join(arr: Array, code: String):
	var res = ""
	for item in arr:
		if len(item) > 0:
			res += item + code
	return res.substr(0, len(res) - len(code)) 


static func map(arr: Array, fn: Callable) -> Array:
	var res = []
	for item in arr:
		res.push_back(fn.call(item))
	return res

static func intersect(arr1: Array, arr2: Array) -> Array:
	var res = []
	for item in arr1:
		if arr2.find(item) != -1:
			res.push_back(item)
	return res
