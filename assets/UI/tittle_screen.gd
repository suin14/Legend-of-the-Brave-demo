extends Control

@onready var v: VBoxContainer = $v
@onready var start: Button = $v/Start
@onready var load: Button = $v/Load


func _ready() -> void:
	load.disabled = not Game.has_save()
	
	start.grab_focus()
		
	SoundManager.setup_ui_sounds(self)  #设置ui音效


func _on_start_pressed() -> void:
	Game.new_game()
	

func _on_load_pressed() -> void:
	Game.load_game()


func _on_quit_pressed() -> void:
	get_tree().quit()
