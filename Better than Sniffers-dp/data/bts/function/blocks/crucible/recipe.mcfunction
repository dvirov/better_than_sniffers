execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

execute if score @s crafting.progress matches 1.. run function bts:blocks/crucible/reduce_crafting_time


## work only if placed on lit campfire 
execute unless block ~ ~-1 ~ campfire[lit=true] run return fail 

function bts:blocks/crucible/get_ingredients

#steel ingot 
execute if score @s ingredient.shapless.iron_ingot matches 1 \
        if score @s ingredient.shapless.coals matches 2 \
        unless items block ~ ~ ~ container.16 *[count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{id:"steel_ingot"}] \
        run function bts:blocks/crucible/recipe/steel_ingot


#blazing ingot
#execute if items block ~ ~ ~ container.10 gold_ingot if items block ~ ~ ~ container.11 blaze_powder if items block ~ ~ ~ container.12 blaze_powder unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"blazing_ingot":1b},count=64] run function bts:blocks/crucible/recipe/blazing_ingot

#Red Quartz
#execute if items block ~ ~ ~ container.10 quartz if items block ~ ~ ~ container.11 redstone if items block ~ ~ ~ container.12 redstone unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"red_quartz":1b},count=64] run function bts:blocks/crucible/recipe/red_quartz

#smelt iron
execute if score @s ingredient.shapless.raw_iron matches 1 \
        if score @s ingredient.shapless.empty matches 2 \
        unless items block ~ ~ ~ container.16 *[count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{id:"iron_ingot"}] \
        run function bts:blocks/crucible/recipe/raw_to_iron_ingot

#smelt copper
execute if score @s ingredient.shapless.raw_copper matches 1 \
        if score @s ingredient.shapless.empty matches 2 \
        unless items block ~ ~ ~ container.16 *[count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{id:"copper_ingot"}] \
        run function bts:blocks/crucible/recipe/raw_to_copper_ingot





