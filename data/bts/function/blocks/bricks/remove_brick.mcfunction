
tag @s remove has_brick 

# drop when dry
execute if score @s timer matches 24000.. run loot spawn ~ ~ ~ loot bts:items/brick

# drops when not dry
execute if score @s timer matches ..23999 run loot spawn ~ ~ ~ loot bts:items/clay_ball

execute on passengers run data modify entity @s item.components.minecraft:item_model set value "air"

playsound minecraft:block.decorated_pot.hit block @a ~ ~ ~