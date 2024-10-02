execute store success score boolkill bool run kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
execute as @e[type=block_display,tag=custom_block,tag=crucible] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/crucible_drop
execute as @e[type=block_display,tag=custom_block,tag=fletching] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/fletching_drop
execute as @e[type=block_display,tag=custom_block,tag=cooking] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/cooking_drop
execute as @e[type=interaction,tag=custom_block,tag=anvil] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/anvil_drop
execute as @e[type=armor_stand,tag=custom_block,tag=campfire] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/campfire_drop


execute as @e[type=#bts:visuals,tag=custom_block] at @s if block ~ ~ ~ air run kill @s
