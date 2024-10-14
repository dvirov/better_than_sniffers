execute if items entity @s weapon.* #bts:fuel1 run scoreboard players add @s campfire_time_ticks 120
execute if items entity @s weapon.* #bts:fuel2 run scoreboard players add @s campfire_time_ticks 6000
execute if items entity @s weapon.* #bts:fuel3 run scoreboard players add @s campfire_time_ticks 12000

item modify entity @s weapon bts:delete_item
particle flame ~ ~ ~ 0.2 0.2 0.2 0 2 force