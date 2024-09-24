function bts:bars/bar_temp
execute unless predicate bts:is_not_breathing run function bts:bars/bar_stam
execute if predicate bts:is_not_breathing run function bts:bars/bar_stam_uw
function bts:bars/bar_sanity

title @s[gamemode=survival] actionbar [{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:0b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:1b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:2b}].components.minecraft:item_name"}]
