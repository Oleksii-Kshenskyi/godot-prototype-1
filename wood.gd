extends Area2D
const ITEM_ID = "wood"

func collect() -> void:
    G_inventory.add_item(ITEM_ID, 1)
    queue_free()
