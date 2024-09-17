#run as text disply

data merge entity @s {text:'[{"color":"red","italic":false,"score":{"name":"@s","objective":"campfire_time"}},{"color":"gold","italic":true,"text":"s"}]'}

execute store result score @s campfire_time_ticks run scoreboard players get @n[type=armor_stand,tag=campfire] campfire_time_ticks
execute store result score @s campfire_time run scoreboard players get @n[type=armor_stand,tag=campfire] campfire_time
execute unless score @s campfire_time_ticks matches ..0 if block ~ ~ ~ campfire[lit=true] run scoreboard players remove @n[type=armor_stand,tag=litme] campfire_time_ticks 1
execute store result score @s campfire_time run scoreboard players operation @s campfire_time_ticks /= .20 values
execute as @n[distance=..1,type=armor_stand,tag=campfire] at @s if predicate datapack:misc/campfire_off run function datapack:campfire/unlit


execute as @n[type=armor_stand,tag=campfire,tag=litme] at @s run function datapack:campfire/fuel
