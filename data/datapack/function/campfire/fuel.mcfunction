execute if entity @s[nbt={HandItems:[{id:"minecraft:air"},{}]}] run return 0
execute if predicate datapack:fuel1 run scoreboard players add @s campfire_time_ticks 120
execute if predicate datapack:fuel2 run scoreboard players add @s campfire_time_ticks 6000
execute if predicate datapack:fuel3 run scoreboard players add @s campfire_time_ticks 12000
data merge entity @s {HandItems:[{id:"minecraft:air",count:1},{}]}
particle flame ~ ~ ~ 0.2 0.2 0.2 0 2 force