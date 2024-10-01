
#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
#execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ campfire run execute as @n[type=armor_stand,tag=campfire] run tag @s add litme
execute if block ~ ~ ~ campfire run execute as @n[type=armor_stand,tag=campfire] at @s run scoreboard players set @s campfire_time_ticks 200
execute unless score @s raycast matches 50 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:blocks/campfire/lit_raycast
scoreboard players reset @s raycast

