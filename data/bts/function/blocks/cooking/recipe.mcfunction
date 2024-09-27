execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] unless items block ~ ~ ~ container.20 * run function bts:blocks/cooking/shift_click
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] unless items block ~ ~ ~ container.22 * run function bts:blocks/cooking/shift_click2
#execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"cooked_food"}] if items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.22 * unless items entity @p[] player.cursor * run function bts:blocks/cooking/shift_click3

execute if predicate bts:word_event/rng0.01 run playsound minecraft:block.lava.ambient ambient @a[distance=..4] ~ ~ ~

#steel ingot                                input 0                                      input 1                                       input2                                           input3                                          input4                              input5                                                input6                          verify output slot                                                       unless full                                                                                  craft
execute if items block ~ ~ ~ container.20 bowl if items block ~ ~ ~ container.1 beetroot if items block ~ ~ ~ container.2 beetroot if items block ~ ~ ~ container.3 beetroot if items block ~ ~ ~ container.10 beetroot if items block ~ ~ ~ container.11 beetroot if items block ~ ~ ~ container.12 beetroot unless items block ~ ~ ~ container.16 *[!custom_data={"tag":"cooked_food"}] unless items block ~ ~ ~ container.16 beetroot_soup[minecraft:custom_data={"tag":"cooked_food"},count=1] run function bts:blocks/cooking/soup/beetroot_soup
#execute if items block ~ ~ ~ container.2 flint if items block ~ ~ ~ container.11 stick if items block ~ ~ ~ container.20 feather if items block ~ ~ ~ container.16 arrow[minecraft:custom_data={"tag":"arrow"}] unless items block ~ ~ ~ container.16 arrow[minecraft:custom_data={"tag":"arrow"},count=64] run function bts:blocks/cooking/soup/beetroot_soup




