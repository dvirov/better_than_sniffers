execute as @e[type=item_frame,tag=place_crucible] run loot spawn ~ ~ ~ loot bts:crucible_drop
execute as @e[type=item_frame,tag=place_fletching] run loot spawn ~ ~ ~ loot bts:fletching_drop
execute as @e[type=item_frame,tag=place_cooking] run loot spawn ~ ~ ~ loot bts:cooking_drop

kill @s
