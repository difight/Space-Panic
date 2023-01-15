extends Node2D

onready var O2volume = 100
onready var Arrow = $Arrow


func _process(delta):
	if Global.onO2Electro and self.O2volume < 100:
		self.O2volume += 1
		Arrow.rotation_degrees += int(self.O2volume) - Arrow.rotation_degrees
	if not Global.onO2Electro and self.O2volume > -100:
		self.O2volume -= 1
		Arrow.rotation_degrees -= Arrow.rotation_degrees - int(self.O2volume)
