extends Sprite2D

@export var target_size = Vector2(32, 32)

func _ready() -> void:
    var texture_size = texture.get_size()
    scale = target_size / texture_size
