execute unless score @s timer matches 3 run loot spawn ~ ~ ~ loot bts:items/cotton_seeds
execute if score @s timer matches 3 run loot spawn ~ ~ ~ loot bts:custom_block/cotton_grown
execute as @e[distance=..0.5,limit=1,type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] run item modify entity @s contents bts:delete_item