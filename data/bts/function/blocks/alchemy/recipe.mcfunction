execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] unless items block ~ ~ ~ container.20 * run function bts:blocks/fletching/shift_click
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] unless items block ~ ~ ~ container.22 * run function bts:blocks/fletching/shift_click2
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={arrow:1b}] if items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.22 * unless items entity @p[] player.cursor * run function bts:blocks/fletching/shift_click3


# test recipe
execute if items block ~ ~ ~ container.3 glowstone_dust \
        if items block ~ ~ ~ container.4 sweet_berries \ 
        if items block ~ ~ ~ container.5 glowstone_dust \
        if items block ~ ~ ~ container.11 glowstone_dust \
        if items block ~ ~ ~ container.15 glowstone_dust \
        unless items block ~ ~ ~ container.22 *[count=64] \ 
        if items block ~ ~ ~ container.22 *[!custom_data={glow_berries:1b}] run function bts:blocks/alchemy/recipe/test

execute unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \ 
        unless items block ~ ~ ~ container.5 * \
        if items block ~ ~ ~ container.11 water_bucket \
        if items block ~ ~ ~ container.15 lava_bucket \
        unless items block ~ ~ ~ container.22 *[count=64] \ 
        run function bts:blocks/alchemy/recipe/cobblestone





