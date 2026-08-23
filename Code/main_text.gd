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
		text = "Let's get out of here Tony"
		sprite = "Harrow"
	if Global.textProgress == 2:
		text = "Alright!"
		sprite = "Tony"
	if Global.textProgress == 3:
		text = "Ugh! I hate taking the bus from school."
		sprite = "Harrow"
	if Global.textProgress == 4:
		text = "Wait you just left the bus because of that?
		like a last minute side quest? Really Harrow?"
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
		$Background.animation = "Country"
	if Global.textProgress == 11:
		text = "Yeah, finally in the nature, it's been so long that 
		we last went on a trip like this."
		sprite = "Tony"
	if Global.textProgress == 12:
		text = "Over all, we haven't really talked in ages."
	if Global.textProgress == 13:
		text = "Well we could change that today!"
		sprite = "Harrow"
	if Global.textProgress == 14:
		text = "Hello there little ones!"
		sprite = "Eliza"
	if Global.textProgress == 15:
		text = "Eliza! How are you doing?"
		sprite = "Tony"
	if Global.textProgress == 16:
		text = "I've certainly had better days, but I'm feeling fine."
		sprite = "Eliza"
	if Global.textProgress == 17:
		text = "Last time I saw you, you were so little! Now you are so big!"
	if Global.textProgress == 18:
		text = "Yeah, we used to go outside all the time."
		sprite = "Harrow"
	if Global.textProgress == 19:
		text = "When was it ..."
		sprite = "Eliza"
	if Global.textProgress == 20:
		text = "Ah, now I remember! When you were 5, we last met."
	if Global.textProgress == 21:
		text = "Tell us a story!"
		sprite = "Tony"
	if Global.textProgress == 22:
		text = "Well you both were very playful, one time, you ran into the woods 
		and happened to appear in my garden!"
		sprite = "Eliza"
	if Global.textProgress == 23:
		text = "Your parents were so worried!"
	if Global.textProgress == 24:
		text = "We did?!"
		sprite = "Harrow"
	if Global.textProgress == 25:
		text = "You did! But anyways, I need to leave to see after my cats, 
		see you sometime!"
		sprite = "Eliza"
	if Global.textProgress == 26:
		text = "See you!"
		sprite = "Tony"
	if Global.textProgress == 27:
		text = "Bye!"
		sprite = "Harrow"
	if Global.textProgress == 28:
		text = "So what have you been doing with your life?"
	if Global.textProgress == 29:
		text = "I joined a youth help organization!"
		sprite = "Tony"
	if Global.textProgress == 30:
		text = "That's amazing! Well I started coding, 
		I know, a little less impressive."
		sprite = "Harrow"
	if Global.textProgress == 31:
		text = "Oh cool! Maybe we could team up some day, our website is just 
		the slightest bit outdated"
		sprite = "Tony"
	if Global.textProgress == 32:
		text = "Yeah, that'd be nice! You know I oftentimes miss you! Ever since..."
		sprite = "Harrow"
	if Global.textProgress == 33:
		text = "Psshhh, look over there, a fox"
		sprite = "Tony"
	if Global.textProgress == 34:
		$PointAndClickGame.set_visible(true)
	if Global.textProgress == 35:
		text = "That's a cute one!"
		sprite = "Harrow"
	if Global.textProgress == 36:
		text = "Yeah!"
		sprite = "Tony"
	if Global.textProgress == 37:
		text = "Look over there, we nearly made it home!"
		sprite = "Harrow"
	if Global.textProgress == 38:
		text = "Yeah, we need to walk again sometime! 
		Maybe not so last minute next time!"
		sprite = "Tony"
	if Global.textProgress == 39:
		text = "Goodbye!"
		sprite = "Harrow"
	if Global.textProgress == 40:
		get_tree().change_scene_to_file("res://Scenes/end_screen.tscn")
	if Input.is_action_just_pressed("ui_accept") and Global.textProgress != 9 and Global.textProgress != 34:
		print(Global.textProgress)
		Global.textProgress += 1
