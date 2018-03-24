extends Node

export(PackedScene) var brick;
export(PackedScene) var paddle;
export(PackedScene) var ball;

const STAGE_W = 480;
const STAGE_H = 480;

const PADDLE_W = 64;
const PADDLE_H = 16;

const ORIGIN = Vector2(0,0)
const MAX_BRICKS_ON_WIDTH = 15;

const MAX_BRICK_LINES = 4;


func _ready():
	
	var _paddle = paddle.instance()
	_paddle.position= Vector2(STAGE_W/2 - PADDLE_W/2, STAGE_H - PADDLE_H)
	
	add_child(_paddle)
	
	for x in range(0,MAX_BRICKS_ON_WIDTH):
		for y in range(0, MAX_BRICK_LINES):
			var new_brick = brick.instance();
			new_brick.set_name("gen_brick_%s_%s" % [x,y] );
			new_brick.position = Vector2(32 * x, 16 * y);
			add_child(new_brick)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
