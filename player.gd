extends Sprite2D
@export var speed = 400.0
@onready var interact_area = $InteractArea

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
    
    if Input.is_action_just_pressed("interact"):
        for area in interact_area.get_overlapping_areas():
            if area.has_method("collect"):
                area.collect()
