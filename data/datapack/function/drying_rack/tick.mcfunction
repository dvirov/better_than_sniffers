#as drying rack armor stand

execute at @s[tag=!placed] unless block ~ ~ ~ smooth_stone_slab run setblock ~ ~ ~ minecraft:smooth_stone_slab
tag @s add placed
execute unless block ~ ~0.5 ~ smooth_stone_slab run function datapack:kill




#effect give @s glowing 1 1

#
execute as @s[] run scoreboard players add @s drying_time 1


#execute as @e[type=armor_stand,tag=drying_rack] run scoreboard players add @s drying_timeL 1

#execute if entity @e[type=armor_stand,nbt={HandItems:[{id:"minecraft:bone",count:1},{id:"minecraft:tnt",count:1}]}]