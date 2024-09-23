function datapack:bars/bar_temp
execute unless predicate datapack:is_not_breathing run function datapack:bars/bar_stam
execute if predicate datapack:is_not_breathing run function datapack:bars/bar_stam_uw
function datapack:bars/bar_sanity

title @s[gamemode=survival] actionbar [{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:0b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:1b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:2b}].components.minecraft:item_name"}]
