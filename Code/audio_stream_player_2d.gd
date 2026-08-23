extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	seek(3)
	play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if stream.get_length() == 113:
		seek(37)
		play()
