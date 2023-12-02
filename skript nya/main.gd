extends Control
export var lvl = 'level.txt'
signal sv

signal back

func _ready():
	OS.center_window()
	pass

func _on_exit_pressed():
	$klik.play(0.10)
func _on_setting_pressed():
	$klik.play(0.10)
func _on_play_pressed():
	$klik.play(0.10)
	
func _on_back_pressed():
	$klik.play(0.10)
func _on_save_pressed():
	$klik.play(0.10)

func _on_load_pressed():
	var file = File.new()
	file.open(lvl, File.READ)
	var a = file.get_line()
	file.close()
	
	if a == '1':
		get_tree().change_scene("res://levels/lv1.tscn")
	elif a == '2':
		get_tree().change_scene("res://levels/lv2.tscn")
	elif a == '3':
		get_tree().change_scene("res://levels/lv3.tscn")
	elif a == '4':
		get_tree().change_scene("res://levels/lv4.tscn")
	elif a == '5':
		get_tree().change_scene("res://levels/lv5.tscn")
	elif a == '6':
		get_tree().change_scene("res://levels/lv6.tscn")
	elif a == '7':
		get_tree().change_scene("res://levels/lv7.tscn")
	elif a == '8':
		get_tree().change_scene("res://levels/lv8.tscn")
	elif a == '9':
		get_tree().change_scene("res://levels/lv9.tscn")
	elif a == '10':
		get_tree().change_scene("res://levels/lv10.tscn")
	pass

func _on_play_released():
	get_tree().change_scene("res://menu/tip.tscn")
func _on_setting_released():
	get_tree().change_scene("res://menu/setting.tscn")
func _on_exit_released():
	get_tree().quit()
func _on_setting_back():
	get_tree().change_scene("res://menu/main.tscn")


func _on_save_released():
	emit_signal("sv")
func _on_back_released():
	emit_signal("back")
	get_tree().change_scene("res://menu/main.tscn")
