extends Node

var mapper = {}

func load_texture(path):
	if mapper.has(path):
		return mapper[path]
	var texture = load(path)
	mapper[path] = texture
	return texture

func cache_texture(path_arr: Array):
	for path in path_arr:
		mapper[path] = load(path)

func load_json(path):
	if mapper.has(path):
		return mapper[path]
	var texture = FileUtils.read_json_file(path)
	mapper[path] = texture
	return texture
