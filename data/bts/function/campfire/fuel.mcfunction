execute unless items entity @s weapon.mainhand * run return 0
execute if predicate bts:fuel1 run scoreboard players add @s campfire_time_ticks 120
execute if predicate bts:fuel2 run scoreboard players add @s campfire_time_ticks 6000
execute if predicate bts:fuel3 run scoreboard players add @s campfire_time_ticks 12000
data merge entity @s {HandItems:[{id:"minecraft:air",count:1},{}]}
particle flame ~ ~ ~ 0.2 0.2 0.2 0 2 force