execute unless block ~ ~ ~ #bts:block_breaker if score @s timer matches 3.. run return run setblock ~ ~ ~ beetroots
execute if block ~ ~ ~ beetroots unless block ~ ~ ~ beetroots[age=0] run function bts:blocks/crops/cotton/grow

execute if score @s timer matches 1 run data modify entity @s item.components.minecraft:item_model set value "bts:cotton_stage1"
execute if score @s timer matches 2 run data modify entity @s item.components.minecraft:item_model set value "bts:cotton_stage2"
execute if score @s timer matches 3 run data modify entity @s item.components.minecraft:item_model set value "bts:cotton_stage3"

