extends Node2D

export(int) var PADDLE_SPEED = 200;

onready var PADDLE_BODY = $KinematicBody2D;

#func _ready():
#	pass

func _process(delta):
	
	if ( Input.is_action_pressed("ui_left") ):
		
		PADDLE_BODY.move_and_collide( Vector2(-1,0) * PADDLE_SPEED * delta )
	
	if ( Input.is_action_pressed("ui_right") ):
		PADDLE_BODY.move_and_collide( Vector2(1,0) * PADDLE_SPEED * delta )
