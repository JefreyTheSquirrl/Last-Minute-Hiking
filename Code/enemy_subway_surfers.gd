extends Area2D

@onready var sprite = randi() % 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if sprite == 1:
		$AnimatedSprite2D.animation = "Lamp"
	if sprite == 0:
		$AnimatedSprite2D.animation = "Eliza"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 330 * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("KillZone"):
		queue_free()
