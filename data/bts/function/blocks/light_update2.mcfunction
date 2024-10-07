scoreboard players set @s brightness.block 0
execute positioned ~0 ~1 ~0 run function bts:blocks/light_level_calc
execute positioned ~0 ~-1 ~0 run function bts:blocks/light_level_calc
execute positioned ~0 ~0 ~1 run function bts:blocks/light_level_calc
execute positioned ~0 ~0 ~-1 run function bts:blocks/light_level_calc
execute positioned ~-1 ~0 ~0 run function bts:blocks/light_level_calc
execute positioned ~1 ~0 ~0 run function bts:blocks/light_level_calc


execute if score @s brightness.block matches 0 run data modify entity @s brightness.block set value 0
execute if score @s brightness.block matches 1 run data modify entity @s brightness.block set value 1
execute if score @s brightness.block matches 2 run data modify entity @s brightness.block set value 2
execute if score @s brightness.block matches 3 run data modify entity @s brightness.block set value 3
execute if score @s brightness.block matches 4 run data modify entity @s brightness.block set value 4
execute if score @s brightness.block matches 5 run data modify entity @s brightness.block set value 5
execute if score @s brightness.block matches 6 run data modify entity @s brightness.block set value 6
execute if score @s brightness.block matches 7 run data modify entity @s brightness.block set value 7
execute if score @s brightness.block matches 8 run data modify entity @s brightness.block set value 8
execute if score @s brightness.block matches 9 run data modify entity @s brightness.block set value 9
execute if score @s brightness.block matches 10 run data modify entity @s brightness.block set value 10
execute if score @s brightness.block matches 11 run data modify entity @s brightness.block set value 11
execute if score @s brightness.block matches 12 run data modify entity @s brightness.block set value 12
execute if score @s brightness.block matches 13 run data modify entity @s brightness.block set value 13
execute if score @s brightness.block matches 14 run data modify entity @s brightness.block set value 14
execute if score @s brightness.block matches 15 run data modify entity @s brightness.block set value 15

execute if predicate bts:noroof run data modify entity @s brightness.sky set value 15