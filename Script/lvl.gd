extends Control
var data = []
export var angka = 1

func _ready():
	pass
	OS.center_window()
	
func _on_setting_pressed():
	$setting.visible = true
func _on_reload_pressed():
	get_tree().reload_current_scene()
func _on_setting_sv():
	dat.savedat(angka)
	
func _on_next_pressed():
	print(data)
	var lanjut = false
	var hasil = ''
	hasil = ''.join(data)

	if hasil == 'bat':		# 1
		get_tree().change_scene("res://levels/lv2.tscn")
	elif hasil == 'hat':	# 2
		get_tree().change_scene("res://levels/lv3.tscn")
	elif hasil == 'key':	# 3
		get_tree().change_scene("res://levels/lv4.tscn")
	elif hasil == 'cat':	# 4
		get_tree().change_scene("res://levels/lv5.tscn")
	elif hasil == 'bed':	# 5
		get_tree().change_scene("res://levels/lv6.tscn")
	elif hasil == 'ball':	# 6
		get_tree().change_scene("res://levels/lv7.tscn")
	elif hasil == 'bell':	# 7
		get_tree().change_scene("res://levels/lv8.tscn")
	elif hasil == 'leaf':	# 8
		get_tree().change_scene("res://levels/lv9.tscn")
	elif hasil == 'table':	# 9
		get_tree().change_scene("res://levels/lv10.tscn")
	elif hasil == 'apple':	# 10
		get_tree().change_scene("res://menu/main.tscn")
	
#1
func _on_book1_area_entered(area):
	if $frames/b:
		data.append('b')
func _on_apple1_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_thunder1_area_entered(area):
	if $frames/t:
		data.append('t')

#2
func _on_hat2_area_entered(area):
	if $frames/h:
		data.append('h')
func _on_apple2_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_thunder2_area_entered(area):
	if $frames/t:
		data.append('t')

#3
func _on_key3_area_entered(area):
	if $frames/k:
		data.append('k')
func _on_earth3_area_entered(area):
	if $frames/e:
		data.append('e')
func _on_yoyo3_area_entered(area):
	if $frames/y:
		data.append('y')

#4
func _on_coin4_area_entered(area):
	if $frames/c:
		data.append('c')
func _on_apple4_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_thunder4_area_entered(area):
	if $frames/t:
		data.append('t')

#5
func _on_earth5_area_entered(area):
	if $frames/e:
		data.append('e')
func _on_book5_area_entered(area):
	if $frames/b:
		data.append('b')
func _on_dirt5_area_entered(area):
	if $frames/d:
		data.append('d')
		
#6
func _on_book6_area_entered(area):
	if $frames/b:
		data.append('b')
func _on_apple6_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_leaf62_area_entered(area):
	if $frames/l:
		data.append('l')
func _on_leaf61_area_entered(area):
	if $frames/I:
		data.append('l')

#7
func _on_book7_area_entered(area):
	if $frames/b:
		data.append('b')
func _on_earth7_area_entered(area):
	if $frames/e:
		data.append('e')
func _on_leaf71_area_entered(area):
	if $frames/l:
		data.append('l')
	elif $frames/I:
		data.append('l')
func _on_leaf72_area_entered(area):
	if $frames/I:
		data.append('l')
	elif $frames/l:
		data.append('l')
		
#8
func _on_leaf8_area_entered(area):
	if $frames/L:
		data.append('l')
func _on_earth8_area_entered(area):
	if $frames/e:
		data.append('e')
func _on_apple8_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_fish8_area_entered(area):
	if $frames/f:
		data.append('f')

#9
func _on_thunder9_area_entered(area):
	if $frames/t:
		data.append('t')
func _on_apple9_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_book9_area_entered(area):
	if $frames/b:
		data.append('b')
func _on_leaf9_area_entered(area):
	if $frames/l:
		data.append('l')
func _on_earth9_area_entered(area):
	if $frames/e:
		data.append('e')

#10
func _on_apple0_area_entered(area):
	if $frames/a:
		data.append('a')
func _on_pencil02_area_entered(area):
	if $frames/p:
		data.append('p')
func _on_pencil01_area_entered(area):
	if $frames/pp:
		data.append('p')
func _on_leaf0_area_entered(area):
	if $frames/l:
		data.append('l')
func _on_earth0_area_entered(area):
	if $frames/e:
		data.append('e')
