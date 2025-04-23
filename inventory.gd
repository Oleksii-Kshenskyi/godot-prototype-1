extends Node

signal changed
var items := {} # {"id": <count>}

func add_item(id: String, amount: int = 1):
    items[id] = items.get(id, 0) + amount
    emit_signal("changed")
    
func remove_item(id: String, amount: int = 1) -> bool:
    if items.get(id, 0) >= amount:
        items[id] -= amount
        emit_signal("changed")
        return true
    return false
    
func has_item(id: String, amount: int = 1) -> bool:
    return items.get(id, 0) >= amount
