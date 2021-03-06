extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var highlight = $highlight
onready var sprite = $sprite
onready var count = $count

onready var inv = get_node("/root/base/gui/inventory")

var itemname
var countint = 1

var left
var right
var up
var down

var focused = false setget highlight

# Called when the node enters the scene tree for the first time.
func _ready():
	highlight(false) # Replace with function body.
	
func prep_display():

	if itemname:
		sprite.texture = load("res://assets/items/" + itemname + ".png")
	else:
		sprite.texture = null
		
	if countint == 1 || !itemname:
		count.text = ""
	else:
		count.text = str(countint)
	

func highlight(value):
	highlight.visible = value
	focused = value
