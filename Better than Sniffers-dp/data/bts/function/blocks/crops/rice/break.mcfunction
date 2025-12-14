execute unless score @s timer matches 5 run loot spawn ~ ~ ~ loot bts:items/rice
execute if score @s timer matches 5 run loot spawn ~ ~ ~ loot bts:custom_block/rice_grown
kill @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]
