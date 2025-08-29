# scripts/ui/MainMenu.gd
extends Control

@onready var start_btn: Button = $"CenterContainer/VBoxContainer/StartButton"
@onready var quit_btn:  Button = $"CenterContainer/VBoxContainer/QuitButton"

func _ready() -> void:
	start_btn.pressed.connect(_on_start_pressed)
	quit_btn.pressed.connect(_on_quit_pressed)

func _on_start_pressed() -> void:
	Game.start_new_game()

func _on_quit_pressed() -> void:
	Game.quit_game()
