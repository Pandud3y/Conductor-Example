extends Node2D

func _ready():
	$VBoxContainer/SpinBox.min_value = 60
	$VBoxContainer/SpinBox.max_value = 300
	$VBoxContainer/SpinBox.value = 120
	$VBoxContainer/DoneButton.pressed.connect(_on_Button_pressed)

func _on_Button_pressed():
	Global.custom_bpm = $VBoxContainer/SpinBox.value
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
