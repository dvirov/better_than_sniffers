execute as @e[type=item_frame,tag=place_crucible] run loot spawn ~ ~ ~ loot bts:custom_block/crucible_drop
execute as @e[type=item_frame,tag=place_fletching] run loot spawn ~ ~ ~ loot bts:custom_block/fletching_drop
execute as @e[type=item_frame,tag=place_cooking] run loot spawn ~ ~ ~ loot bts:custom_block/cooking_drop
execute as @e[type=item_frame,tag=place_ampfire] run loot spawn ~ ~ ~ loot bts:custom_block/campfire_drop
execute as @e[type=item_frame,tag=place_anvil] run loot spawn ~ ~ ~ loot bts:custom_block/anvil_drop

kill @s
