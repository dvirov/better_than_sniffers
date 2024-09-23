function datapack:blocks/kill

execute as @a as @s run function datapack:blocks/crucible/clear

execute as @a if score @s barrel.open matches 1 run playsound block.iron_trapdoor.open block @s ~ ~ ~ 100 1 1
execute as @a if score @s barrel.open matches 1.. run scoreboard players set @s barrel.open 0

execute as @e[type=block_display,tag=custom_block,tag=crucible] at @s positioned ~0.1 ~0.1 ~0.1 run function datapack:blocks/crucible/recipe
