extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const PLAYERSPEED = 200
onready var theta = get_item_rect().size.y

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)


func _process(delta):
	var pos = get_position()
	if Input.is_action_pressed('ui_up'):
		pos.y += -PLAYERSPEED * delta
	if Input.is_action_pressed('ui_down'):
		pos.y += PLAYERSPEED * delta
	if pos.y > (0 + theta) and pos.y < (get_viewport().get_size().y - theta):
		set_position(pos)