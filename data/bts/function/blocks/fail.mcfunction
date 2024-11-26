execute if entity @s[type=item_frame,tag=place_crucible] run loot give @p[tag=block_placed] loot bts:custom_block/crucible_drop
execute if entity @s[type=item_frame,tag=place_fletching] run loot give @p[tag=block_placed] loot bts:custom_block/fletching_drop
execute if entity @s[type=item_frame,tag=place_cooking] run loot give @p[tag=block_placed] loot bts:custom_block/cooking_drop
execute if entity @s[type=item_frame,tag=place_campfire] run loot give @p[tag=block_placed] loot bts:custom_block/campfire_drop
execute if entity @s[type=item_frame,tag=place_anvil] run loot give @p[tag=block_placed] loot bts:custom_block/anvil_drop
execute if entity @s[type=item_frame,tag=place_cotton_plant] run loot give @p[tag=block_placed] loot bts:custom_block/cotton_seeds


execute if items entity @p[tag=block_placed] weapon.mainhand item_frame run item modify entity @a weapon.mainhand bts:add1 
execute if items entity @p[tag=block_placed] weapon.mainhand item_frame run item modify entity @a weapon.mainhand bts:delete_item
execute if items entity @p[tag=block_placed] weapon.offhand item_frame run item modify entity @a weapon.offhand bts:add1 
execute if items entity @p[tag=block_placed] weapon.offhand item_frame run item modify entity @a weapon.offhand bts:delete_item
kill @s
