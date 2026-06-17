execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

execute if score @s crafting.progress matches 1.. run function bts:blocks/alchemy/reduce_crafting_time

#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] unless items block ~ ~ ~ container.20 * run function bts:blocks/fletching/shift_click
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] unless items block ~ ~ ~ container.22 * run function bts:blocks/fletching/shift_click2
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] if items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.22 * unless items entity @p[] player.cursor * run function bts:blocks/fletching/shift_click3


execute unless items block ~ ~ ~ container.22 * \
        if items block ~ ~ ~ container.0 *[custom_data~{alchemy:{category:"catalyst"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{alchemy:{category:"modifier"}}] \
        if items block ~ ~ ~ container.4 potion[potion_contents={potion:"minecraft:water"}] \ 
        if items block ~ ~ ~ container.5 *[custom_data~{alchemy:{category:"main"}}] \
        if items block ~ ~ ~ container.11 *[custom_data~{alchemy:{category:"herb"}}] \
        if items block ~ ~ ~ container.15 *[custom_data~{alchemy:{category:"herb"}}] \
         run function bts:blocks/alchemy/recipe/custom_potion




#   # test recipe
#   execute if items block ~ ~ ~ container.3 glowstone_dust \
#           if items block ~ ~ ~ container.4 sweet_berries \ 
#           if items block ~ ~ ~ container.5 glowstone_dust \
#           if items block ~ ~ ~ container.11 glowstone_dust \
#           if items block ~ ~ ~ container.15 glowstone_dust \
#           unless items block ~ ~ ~ container.22 *[count=64] \ 
#           if items block ~ ~ ~ container.22 *[!custom_data={glow_berries:1b}] run function bts:blocks/alchemy/recipe/test
#   
#   execute unless items block ~ ~ ~ container.3 * \
#           unless items block ~ ~ ~ container.4 * \ 
#           unless items block ~ ~ ~ container.5 * \
#           if items block ~ ~ ~ container.11 water_bucket \
#           if items block ~ ~ ~ container.15 lava_bucket \
#           unless items block ~ ~ ~ container.22 *[count=64] \ 
#           run function bts:blocks/alchemy/recipe/cobblestone





