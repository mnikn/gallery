extends Node
class_name TextUtils


static func process_var_tag(content_text: String, inner_args = {}, outer_args = {}):
	var index = 0
	var res = content_text
	while content_text.find(":var", index) != -1:
		index = content_text.find(":var", index)
		var var_block = content_text.substr(index + len(":var") + 1, content_text.find("}", index) - content_text.find("{", index) - 1)
		var var_content = ExpressionUtils.eval_expression(var_block, inner_args, outer_args)
		res = res.replace(":var{%s}" % var_block, str(var_content))
		index += len(":var") + 2 + len(var_block)
	return res

static func process_visible_tag(content_text: String, inner_args = {}, outer_args = {}):
	var index = 0
	var res = content_text
	if res.find(":visible=", index) != -1:
		res = ""
	while content_text.find(":visible=", index) != -1:
		index = content_text.find(":visible=", index)
		var code_block = content_text.substr(index + len(":visible=")+1, content_text.find("{", index) - (index + len(":visible=")+2))
		var last_block_index = index
		while content_text.find(":var", last_block_index) != -1:
			last_block_index = content_text.find("}", last_block_index) + 1
		var text = content_text.substr(index + len(":visible=") + 2 + len(code_block) + 1, content_text.find("}", last_block_index) - content_text.find("{", index) - 1)
#		print_debug(code_block, " ", text)
		if ExpressionUtils.eval_expression(code_block, inner_args, outer_args):
			res += text
		index += len(":visible=") + 2 + len(code_block) + len("text") + 2
	return res

static func process_rich_label_tag(val):
#	val = val.replace("[val_yellow]", "[b][color=fff250]")
	val = val.replace("[val_yellow]", "[b][color=8d7908]")
	val = val.replace("[/val_yellow]", "[/color][/b]")
	return val
