execute if entity @s[type=item_frame,tag=place_crucible] run loot give @p[tag=block_placed] loot bts:custom_block/crucible_drop
execute if entity @s[type=item_frame,tag=place_fletching] run loot give @p[tag=block_placed] loot bts:custom_block/fletching_drop
execute if entity @s[type=item_frame,tag=place_cooking] run loot give @p[tag=block_placed] loot bts:custom_block/cooking_drop
execute if entity @s[type=item_frame,tag=place_campfire] run loot give @p[tag=block_placed] loot bts:custom_block/campfire_drop
execute if entity @s[type=item_frame,tag=place_anvil] run loot give @p[tag=block_placed] loot bts:custom_block/anvil_drop


item modify entity @a weapon bts:add1 
item modify entity @a weapon bts:delete_item


kill @s
