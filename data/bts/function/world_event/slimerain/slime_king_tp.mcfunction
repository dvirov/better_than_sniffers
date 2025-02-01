scoreboard players add @s tp_timer 1
execute unless block ~ ~ ~ #bts:transparent run effect give @s regeneration 1 4 true
execute if score @s tp_timer matches 200 run attribute @s minecraft:scale modifier add 1 -0.4 add_multiplied_total
execute if score @s tp_timer matches 201 run attribute @s minecraft:scale modifier add 2 -0.4 add_multiplied_total
execute if score @s tp_timer matches 202 run attribute @s minecraft:scale modifier add 3 -0.4 add_multiplied_total
execute if score @s tp_timer matches 203 run attribute @s minecraft:scale modifier add 4 -0.4 add_multiplied_total
execute if score @s tp_timer matches 204 run attribute @s minecraft:scale modifier add 5 -0.5 add_multiplied_total
execute if score @s tp_timer matches 205 run attribute @s minecraft:scale modifier add 6 -0.6 add_multiplied_total
execute if score @s tp_timer matches 205 run effect give @s invisibility 1 1 true
execute if score @s tp_timer matches 220 run tp @s @p[gamemode=survival]

execute if score @s tp_timer matches 221 run attribute @s minecraft:scale modifier remove minecraft:1
execute if score @s tp_timer matches 222 run attribute @s minecraft:scale modifier remove minecraft:2
execute if score @s tp_timer matches 223 run attribute @s minecraft:scale modifier remove minecraft:3
execute if score @s tp_timer matches 224 run attribute @s minecraft:scale modifier remove minecraft:4
execute if score @s tp_timer matches 225 run attribute @s minecraft:scale modifier remove minecraft:5
execute if score @s tp_timer matches 226 run attribute @s minecraft:scale modifier remove minecraft:6

execute if score @s tp_timer matches 300 run scoreboard players set @s tp_timer 0