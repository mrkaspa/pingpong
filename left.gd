extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const PLAYERSPEED = 100
onready var theta = get_item_rect().size.y
onready var dir = 'up'

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)


func _process(delta):
	var pos = get_position()
	var next_dir = ''
	if dir == 'up':
		pos.y += -PLAYERSPEED * delta
		next_dir = 'down'
	if dir == 'down':
		pos.y += PLAYERSPEED * delta
		next_dir = 'up'
	var y = ceil(pos.y)
	if y > (0 + theta) and y < (get_viewport().get_size().y - theta):
		set_position(pos)
	else:
		dir = next_dir