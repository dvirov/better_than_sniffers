

# crops
execute if entity @s[tag=place_cotton_plant] at @s align xyz positioned ~.5 ~ ~.5 run function bts:blocks/crops/cotton/place
execute if entity @s[tag=place_rice_plant] at @s align xyz positioned ~.5 ~ ~.5 run function bts:blocks/crops/rice/place

# blocks
execute if entity @s[tag=place_alchemy] run function bts:blocks/alchemy/place

execute if entity @s[tag=place_bricks] run function bts:blocks/bricks/place

execute if entity @s[tag=place_anvil] run function bts:blocks/anvil/place
execute if entity @s[tag=place_campfire] positioned ~.5 ~.03 ~.5 run function bts:blocks/campfire/place
execute if entity @s[tag=place_cooking] run function bts:blocks/cooking/place
execute if entity @s[tag=place_crucible] run function bts:blocks/crucible/place
execute if entity @s[tag=place_fletching] run function bts:blocks/fletching/place

# foods 
execute if entity @s[tag=place_cake] run function bts:blocks/foods/cake/place
