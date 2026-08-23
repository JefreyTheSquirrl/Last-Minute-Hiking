extends Sprite2D

var score = 0
var foxAppeared = false
var startedTimer = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Score.text = str(score)
	spawnFox()
	if score == 9:
		startedTimer = false
	if score > 9 and !startedTimer:
		startedTimer = true
		$FuchsiDespawnTimer.start()
	if score == 15:
		queue_free()
		Global.textProgress += 1

func spawnFox():
	if !foxAppeared:
		$Fuchsi.position = Vector2(randi_range(-256, 256), randi_range(-128, 128))
		foxAppeared = true

func _on_fuchsi_pressed() -> void:
	foxAppeared = false
	score += 1


func _on_fox_despawn_timer_timeout() -> void:
	$FuchsiDespawnTimer.start()
	if score > 9 and startedTimer:
		foxAppeared = false
		score -= 1
