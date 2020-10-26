extends KinematicBody

# Declare member variables here. 

# actions of the player will move the camera 
# although idk if this should be in player; because
# the actual camera is a child of the stage... hmmm
# that means i might need signals to handle this.
# TODO: look into camera place in heirarchy
var camera 


# Called when the node enters the scene tree for the first time.
func _ready():

    # the player is moved by the mouse, but also completely captures/covers up
    # the mouse cursor.
    Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED); 





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func process_user_input():
	# ----------------------------------
	# Capturing/Freeing the cursor
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	# ----------------------------------





# Event handler for any input
# if it's mouse movement, then we need to update the location of the 
# player hand. The location needs to alway be on the screen and in
# front of the camera. The hand must not clip through the map.
# so a little trigonometry can keep us in the right place.

#  {c}
#   | '.
#   |   '.
#   |     {h}
#   -----------
func self._input(event):
    if event is InputEventMouseMotion and (Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED):
        # find the vector between the camera and the hand
        var vecDir = camera.get_global_transform() - self.get_global_transform()
        event.absolute.y
        event.absolute.x
