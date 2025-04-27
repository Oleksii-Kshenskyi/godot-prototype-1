extends CanvasLayer

@onready var wood_label := $VBoxContainer/WoodCountLabel

func _ready() -> void:
    G_inventory.changed.connect(_on_inventory_changed)
    _on_inventory_changed()

func _on_inventory_changed() -> void:
    var wood_count = G_inventory.items.get("wood", 0)
    wood_label.text = "Wood: %d" % wood_count
