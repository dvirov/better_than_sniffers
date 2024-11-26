execute unless score @s timer matches 3 run loot spawn ~ ~ ~ loot bts:custom_block/cotton_seeds
execute if score @s timer matches 3 run loot spawn ~ ~ ~ loot bts:custom_block/cotton_grown
kill @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]