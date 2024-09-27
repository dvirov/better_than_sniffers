function bts:blocks/kill

execute as @a as @s run function bts:blocks/crucible/clear
execute as @a as @s run function bts:blocks/fletching/clear
execute as @a as @s run function bts:blocks/cooking/clear

execute as @a if score @s barrel.open matches 1 run playsound block.iron_trapdoor.open block @s ~ ~ ~ 100 1 1
execute as @a if score @s barrel.open matches 1.. run scoreboard players set @s barrel.open 0

execute as @e[type=block_display,tag=custom_block,tag=crucible] at @s positioned ~0.1 ~0.1 ~0.1 if block ~ ~-1 ~ campfire[lit=true] run function bts:blocks/crucible/recipe
execute as @e[type=block_display,tag=custom_block,tag=fletching] at @s positioned ~0.1 ~0.1 ~0.1 run function bts:blocks/fletching/recipe
execute as @e[type=block_display,tag=custom_block,tag=cooking] at @s positioned ~0.1 ~0.1 ~0.1 if block ~ ~-1 ~ campfire[lit=true] run function bts:blocks/cooking/recipe
