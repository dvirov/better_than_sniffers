execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

execute if score @s crafting.progress matches 1.. run function bts:blocks/cooking/reduce_crafting_time

## work only if placed on lit campfire 
execute unless block ~ ~-1 ~ campfire[lit=true] run return fail 

#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] unless items block ~ ~ ~ container.20 * run function bts:blocks/cooking/shift_click
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] unless items block ~ ~ ~ container.22 * run function bts:blocks/cooking/shift_click2
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] if items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.22 * unless items entity @p[] player.cursor * run function bts:blocks/cooking/shift_click3

execute if predicate bts:world_event/rng0.01 run playsound minecraft:block.lava.ambient ambient @a[distance=..4] ~ ~ ~



execute unless items block ~ ~ ~ container.16 * \
    if items block ~ ~ ~ container.20 bowl \
    if items block ~ ~ ~ container.1 *[minecraft:custom_data~{id:rice}] \
    if items block ~ ~ ~ container.2 *[minecraft:custom_data~{id:rice}] \
    if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:rice}] \
    if items block ~ ~ ~ container.10 *[minecraft:custom_data~{id:rice}] \
    if items block ~ ~ ~ container.11 *[minecraft:custom_data~{id:rice}] \
    if items block ~ ~ ~ container.12 *[minecraft:custom_data~{id:rice}] \
    run return run function bts:blocks/cooking/recipe/rice_bowl


execute unless items block ~ ~ ~ container.16 * \
    if items block ~ ~ ~ container.20 bowl \
    if items block ~ ~ ~ container.1 *[minecraft:custom_data~{cooking_values:{}}] \
    if items block ~ ~ ~ container.2 *[minecraft:custom_data~{cooking_values:{}}] \
    if items block ~ ~ ~ container.3 *[minecraft:custom_data~{cooking_values:{}}] \
    if items block ~ ~ ~ container.10 *[minecraft:custom_data~{cooking_values:{}}] \
    if items block ~ ~ ~ container.11 *[minecraft:custom_data~{cooking_values:{}}] \
    if items block ~ ~ ~ container.12 *[minecraft:custom_data~{cooking_values:{}}] \
    run function bts:blocks/cooking/recipe/custom_stew




# #beetroot soup                          input 0                                      input 1                                       input2                                           input3                                          input4                              input5                                                input6                          verify output slot                                                       unless full                                                                                  craft
# execute if items block ~ ~ ~ container.20 bowl \
#     if items block ~ ~ ~ container.1 beetroot \
#     if items block ~ ~ ~ container.2 beetroot \
#     if items block ~ ~ ~ container.3 beetroot \
#     if items block ~ ~ ~ container.10 beetroot \
#     if items block ~ ~ ~ container.11 beetroot \
#     if items block ~ ~ ~ container.12 beetroot \
#     unless items block ~ ~ ~ container.16 *[!custom_data={"tag":"cooked_food"}] \
#     unless items block ~ ~ ~ container.16 *[minecraft:custom_data={"tag":"cooked_food"},count=1] \
#     run function bts:blocks/cooking/recipe/beetroot_soup
# 
# #rabbit stew                       input 0                                      input 1                                       input2                                           input3                                          input4                              input5                            verify output slot                                                       unless full                                                                                  craft
# execute if items block ~ ~ ~ container.20 bowl \
#     if items block ~ ~ ~ container.* carrot \
#     if items block ~ ~ ~ container.* rabbit \
#     if items block ~ ~ ~ container.* potato \
#     if items block ~ ~ ~ container.* #bts:mushrooms \
#     if items block ~ ~ ~ container.* beetroot \
#     unless items block ~ ~ ~ container.16 *[!custom_data={"tag":"cooked_food"}] \
#     unless items block ~ ~ ~ container.16 *[minecraft:custom_data={"tag":"cooked_food"},count=1] \
#     run function bts:blocks/cooking/recipe/rabbit_stew
# 
# #meat stew                       input 0                                      input 1                                       input2                                           input3                                          input4                              input5                                                 input6                                   verify output slot                                                       unless full                                                                                  craft
# execute if items block ~ ~ ~ container.20 bowl \
#     if items block ~ ~ ~ container.* beef \
#     if items block ~ ~ ~ container.* rabbit \
#     if items block ~ ~ ~ container.* mutton \
#     if items block ~ ~ ~ container.* porkchop \
#     if items block ~ ~ ~ container.* chicken \
#     if items block ~ ~ ~ container.* #bts:vegetables \
#     unless items block ~ ~ ~ container.16 *[!custom_data={"tag":"cooked_food"}] \
#     unless items block ~ ~ ~ container.16 *[minecraft:custom_data={"tag":"cooked_food"},count=1] \
#     run function bts:blocks/cooking/recipe/meat_stew


