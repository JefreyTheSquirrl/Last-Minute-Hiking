extends Node2D

@onready var text = $Polygon2D/Label.text
@onready var sprite = $Character.animation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	talkProgress()
	# ------------ updates the variables
	$Polygon2D/Label.text = text
	$Character.animation = sprite
	# -------------

func talkProgress():
	if Global.textProgress == 1:
			text = "Let's get out of here"
			sprite = "Harrow"
	if Input.is_action_just_pressed("ui_accept"):
		print(Global.textProgress)
		Global.textProgress += 1
