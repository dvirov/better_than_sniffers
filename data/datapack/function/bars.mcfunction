function datapack:bars2
title @s actionbar [{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:0b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:1b}].components.minecraft:item_name"},{"entity":"@s","interpret":true,"nbt":"EnderItems[{Slot:2b}].components.minecraft:item_name"}]

execute if score @s bar_stamina matches 21.. run scoreboard players set @s bar_stamina 21
execute if score @s bar_stamina matches ..-1 run scoreboard players set @s bar_stamina 0
