
execute as @a run function bts:blocks/crucible/clear
execute as @a run function bts:blocks/fletching/clear
execute as @a run function bts:blocks/cooking/clear

execute as @e[type=item_display,tag=custom_block,tag=cotton_plant] at @s run function bts:blocks/tick_grow





execute as @e[type=block_display,tag=custom_block,tag=crucible] at @s positioned ~ ~-0.3 ~ if block ~ ~-1 ~ campfire[lit=true] run function bts:blocks/crucible/recipe
execute as @e[type=block_display,tag=custom_block,tag=fletching] at @s positioned ~ ~-0.3 ~ run function bts:blocks/fletching/recipe
execute as @e[type=block_display,tag=custom_block,tag=cooking] at @s positioned ~ ~-0.3 ~ if block ~ ~-1 ~ campfire[lit=true] run function bts:blocks/cooking/recipe

execute as @a if score @s anvil.cd matches 1.. run scoreboard players remove @s anvil.cd 1

