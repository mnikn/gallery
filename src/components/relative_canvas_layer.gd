extends CanvasLayer

func _ready():
	var p = self.find_parent_node(self, func (item): return item is CanvasLayer)
	if p != null:
		self.layer = p.layer + 1
	
func find_parent_node(node, fn: Callable):
	if node == null or node.get_parent() == null:
		return null
	if fn.call(node.get_parent()):
		return node.get_parent()
	return self.find_parent_node(node.get_parent(), fn)
