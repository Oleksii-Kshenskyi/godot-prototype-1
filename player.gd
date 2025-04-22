extends Sprite2D
@export var speed = 400.0

func _ready() -> void:
	var screen_size = get_viewport_rect().size
	position = screen_size * 0.5

func _physics_process(delta):
	var dir = Vector2.ZERO
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	if dir != Vector2.ZERO:
		position += dir.normalized() * speed * delta
		rotation = dir.angle() - PI / 2
