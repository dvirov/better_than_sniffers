execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#steel ingot 
execute if items block ~ ~ ~ container.10 iron_ingot \
        if items block ~ ~ ~ container.11 #bts:coals \
        if items block ~ ~ ~ container.12 #bts:coals \
        unless items block ~ ~ ~ container.16 music_disc_11[!minecraft:custom_data~{"steel_ingot":1b},count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{"steel_ingot":1b}] \
        run function bts:blocks/crucible/recipe/steel_ingot


#blazing ingot
execute if items block ~ ~ ~ container.10 gold_ingot if items block ~ ~ ~ container.11 blaze_powder if items block ~ ~ ~ container.12 blaze_powder unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"blazing_ingot":1b},count=64] run function bts:blocks/crucible/recipe/blazing_ingot

#Red Quartz
execute if items block ~ ~ ~ container.10 quartz if items block ~ ~ ~ container.11 redstone if items block ~ ~ ~ container.12 redstone unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"red_quartz":1b},count=64] run function bts:blocks/crucible/recipe/red_quartz

#smelt iron
execute if items block ~ ~ ~ container.10 raw_iron \
        unless items block ~ ~ ~ container.11 * \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.16 *[count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{"iron_ingot":1b}] \
        run function bts:blocks/crucible/recipe/raw_to_iron_ingot

#smelt copper
execute if items block ~ ~ ~ container.10 raw_copper \
        unless items block ~ ~ ~ container.11 * \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.16 *[count=64] \
        unless items block ~ ~ ~ container.16 *[!minecraft:custom_data~{"copper_ingot":1b}] \
        run function bts:blocks/crucible/recipe/raw_to_copper_ingot





