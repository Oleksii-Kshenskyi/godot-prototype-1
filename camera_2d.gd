extends Camera2D

func _ready() -> void:
    enabled = true
    
    make_current()
    print("IS CURRENTF?? => %s" % is_current())
