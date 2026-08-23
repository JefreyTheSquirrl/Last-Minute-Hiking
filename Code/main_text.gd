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
	if Global.textProgress == 2:
		text = "Alright!"
		sprite = "Tony"
	if Global.textProgress == 3:
		text = "Ugh! I hate taking the bus from school."
		sprite = "Harrow"
	if Global.textProgress == 4:
		text = "Wait you just left the bus because of that?
		like a last minute side quest?"
		sprite = "Tony"
	if Global.textProgress == 5:
		text = "You could call it that.
		I honestly just wanted to go on a walk."
		sprite = "Harrow"
	if Global.textProgress == 6:
		text = "It's been so long since we last did that!"
	if Global.textProgress == 7:
		text = "True, so we're just headed home from here, right?"
		sprite = "Tony"
	if Global.textProgress == 8:
		text = "Yeah, but let's first just get out of this city!"
		sprite = "Harrow"
	if Global.textProgress == 9:
		$SubwaySurferGame.set_visible(true)
	if Global.textProgress == 10:
		text = "We finally made it out of there!"
	if Input.is_action_just_pressed("ui_accept") and Global.textProgress != 9:
		print(Global.textProgress)
		Global.textProgress += 1
