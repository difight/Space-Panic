extends Node2D

onready var blue = false
onready var blueSwitcher = $Blue
onready var orange = true
onready var orangeSwitcher = $Orange
onready var purpule = false
onready var purpuleSwitcher = $Purple
onready var green = true
onready var greenSwitcher = $Green

onready var sound = $ElectroSwitchSound

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("start")
	CheckToggleSwitch(false)

#check
func CheckToggleSwitch(playSound = true):
	if playSound:
		sound.play()
	if self.blue:
		blueSwitcher.find_node("ElectroOn").visible = true
		blueSwitcher.find_node("ElectroOff").visible = false
		Global.onO2Electro = true
	else:
		blueSwitcher.find_node("ElectroOn").visible = false
		blueSwitcher.find_node("ElectroOff").visible = true
		Global.onO2Electro = false
	if self.orange:
		orangeSwitcher.find_node("ElectroOn").visible = true
		orangeSwitcher.find_node("ElectroOff").visible = false
	else:
		orangeSwitcher.find_node("ElectroOn").visible = false
		orangeSwitcher.find_node("ElectroOff").visible = true
	if self.purpule:
		purpuleSwitcher.find_node("ElectroOn").visible = true
		purpuleSwitcher.find_node("ElectroOff").visible = false
	else:
		purpuleSwitcher.find_node("ElectroOn").visible = false
		purpuleSwitcher.find_node("ElectroOff").visible = true
	if self.green:
		greenSwitcher.find_node("ElectroOn").visible = true
		greenSwitcher.find_node("ElectroOff").visible = false
	else:
		greenSwitcher.find_node("ElectroOn").visible = false
		greenSwitcher.find_node("ElectroOff").visible = true

func _on_BlueArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed('ui_click_left_mouse'):
			self.blue = !self.blue
			CheckToggleSwitch()

func _on_OrangeArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed('ui_click_left_mouse'):
			self.orange = !self.orange
			CheckToggleSwitch()

func _on_PurpleArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed('ui_click_left_mouse'):
			self.purpule = !self.purpule
			CheckToggleSwitch()


func _on_GreenArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed('ui_click_left_mouse'):
			self.green = !self.green
			CheckToggleSwitch()
