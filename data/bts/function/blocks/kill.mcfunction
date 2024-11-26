
#execute if entity @s[type=block_display,tag=custom_block,tag=crucible] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/crucible_drop
#execute if entity @s[type=block_display,tag=custom_block,tag=fletching] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/fletching_drop
#execute if entity @s[type=block_display,tag=custom_block,tag=cooking] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/cooking_drop
#execute if entity @s[type=interaction,tag=custom_block,tag=anvil] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/anvil_drop
#xecute if entity @s[type=armor_stand,tag=custom_block,tag=campfire] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bts:custom_block/campfire_drop
execute if entity @s[type=item_display,tag=custom_block,tag=cotton_plant] at @s if block ~ ~ ~ #bts:block_breaker run function bts:blocks/crops/cotton/break

execute if entity @s[type=#bts:visuals,tag=custom_block,tag=!campfire] at @s if block ~ ~-.2 ~ #bts:block_breaker run kill @s
execute if entity @s[type=#bts:visuals,tag=custom_block,tag=campfire] at @s if block ~ ~ ~ #bts:block_breaker run kill @s
