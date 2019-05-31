extends Control

var prompts = ["Jerry","The Fifth Element","worst","Marvel Captain","soda"]
var story = "Once upon a time %s watched %s and thought it was the %s movie of the past two decades but then wathed %s and changed his mind, now he wants %s and see it again"
var player_words = []

onready var DisplayText = $VBoxContainer/DisplayText
onready var PlayerText = $VBoxContainer/HBoxContainer/PlayerText

func _ready():
	DisplayText.text = story % prompts


func _on_LineEdit_text_entered(new_text):
	update_DisplayText(new_text)

func update_DisplayText(new_text):
	DisplayText.text = new_text
	PlayerText.clear()

func add_to_player_words():
	player_words.append(PlayerText.text)	
	PlayerText.clear()
	
func _on_TextureButton_pressed():
	update_DisplayText(PlayerText.text)


func is_story_done():
	return player_words.size() == prompts.size()