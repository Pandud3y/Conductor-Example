extends Node2D

func _ready():
	$FileDialog.file_mode = FileDialog.FILE_MODE_OPEN_FILE
	$FileDialog.filters = ["*.ogg ; OGG Audio Files"]
	$FileDialog.file_selected.connect(_on_file_selected)
	$VBoxContainer/SongSelectButton.pressed.connect(_on_SelectButton_pressed)
	$VBoxContainer/NextButton.pressed.connect(_on_NextButton_pressed)
	$VBoxContainer/NextButton.disabled = true

func _on_SelectButton_pressed():
	$FileDialog.popup_centered(Vector2(800, 600))

func _on_file_selected(path):
	Global.song_path = path
	$FileNameLabel.text = path.get_file()
	$NextButton.disabled = false

func _on_NextButton_pressed():
	get_tree().change_scene_to_file("res://Scenes/BPMCalibrate.tscn")
