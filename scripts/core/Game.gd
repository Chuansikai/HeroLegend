extends Node
class_name GameManager

const SCENE_MENU  := "res://scenes/ui/MainMenu.tscn"
const SCENE_WORLD := "res://scenes/world/World.tscn"

func _ready() -> void:
	# 启动时也延迟到下一帧，避免启动构建期的阻塞
	call_deferred("_boot")

func _boot() -> void:
	goto_menu()

func goto_menu() -> void:
	change_scene(SCENE_MENU)

func start_new_game() -> void:
	change_scene(SCENE_WORLD)

func quit_game() -> void:
	get_tree().quit()

func change_scene(path: String) -> void:
	# 关键：延迟到树空闲时再真正换场景
	call_deferred("_do_change_scene", path)

func _do_change_scene(path: String) -> void:
	var err := get_tree().change_scene_to_file(path)
	if err != OK:
		push_error("Failed to change scene to %s" % path)
