extends ColorRect

@export var Mob: PackedScene
var score = 0
var canScore = true
var startedGame = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.textProgress == 9 and !startedGame:
		startedGame = true
		$MobTimer.start()
	$Label.text = str(score)
	gameWin(score)

func gameWin(score):
	if score == 10:
		Global.textProgress += 1
		queue_free()

func _on_mob_timer_timeout() -> void:
	$MobTimer.start()
	$MobPath/MobSpawnLocation.set_progress(randi() % 380)
	var mob = Mob.instantiate()
	add_child(mob)
	mob.position = $MobPath/MobSpawnLocation.position
	if score > 5:
		$MobPath/MobSpawnLocation.set_progress(randi() % 380)
		mob = Mob.instantiate()
		add_child(mob)
		mob.position = $MobPath/MobSpawnLocation.position


func _on_kill_zone_area_entered(area: Area2D) -> void:
	if canScore:
		canScore = false
		score += 1
		$ScoreTimer.start()


func _on_player_area_entered(area: Area2D) -> void:
	score = 0


func _on_score_timer_timeout() -> void:
	canScore = true
