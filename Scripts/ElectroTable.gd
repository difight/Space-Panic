extends Node2D

onready var indicator = $ElectroTableBackground/ElectroTableIndicator
var electroValue = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	indicator.set_region_rect(Rect2(0, 0, 0, 34))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	if Global.onElectroAll and self.electroValue < 255:
		self.electroValue += 1
		indicator.set_region_rect(Rect2(0, 0, self.electroValue, 34))
	if not Global.onElectroAll and self.electroValue > 0:
		self.electroValue -= 1
		indicator.set_region_rect(Rect2(0, 0, self.electroValue, 34))
	print(self.electroValue)
