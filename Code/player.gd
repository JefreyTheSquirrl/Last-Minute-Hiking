extends Area2D

@export var speed: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = 0
	if Input.is_action_pressed("ui_right"):
		velocity += 1
	if Input.is_action_pressed("ui_left"):
		velocity -= 1
	if velocity != 0:
		velocity = velocity * speed
	position.x += velocity * delta
	position.x = clamp(position.x, 25, 224)
