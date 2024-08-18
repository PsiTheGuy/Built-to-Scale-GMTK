extends Node2D

@onready var path_follow_2d: PathFollow2D = $Path2D/PathFollow2D
@onready var h_slider: HSlider = $HSlider


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	path_follow_2d.progress_ratio = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	path_follow_2d.progress_ratio += h_slider.value
