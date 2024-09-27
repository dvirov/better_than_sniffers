execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"arrow"}] unless items block ~ ~ ~ container.20 * run function bts:blocks/fletching/shift_click
execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"arrow"}] unless items block ~ ~ ~ container.22 * run function bts:blocks/fletching/shift_click2
execute if items block ~ ~ ~ container.16 *[!minecraft:custom_data={"tag":"arrow"}] if items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.22 * unless items entity @p[] player.cursor * run function bts:blocks/fletching/shift_click3


#steel ingot                                input 1                                      input 2                                       input3                     verify output slot                                                                 unless full                                            craft
execute if items block ~ ~ ~ container.2 flint if items block ~ ~ ~ container.11 stick if items block ~ ~ ~ container.20 feather unless items block ~ ~ ~ container.16 * unless items block ~ ~ ~ container.16 arrow[minecraft:custom_data={"tag":"arrow"},count=64] run function bts:blocks/fletching/arrow/arrow
execute if items block ~ ~ ~ container.2 flint if items block ~ ~ ~ container.11 stick if items block ~ ~ ~ container.20 feather if items block ~ ~ ~ container.16 arrow[minecraft:custom_data={"tag":"arrow"}] unless items block ~ ~ ~ container.16 arrow[minecraft:custom_data={"tag":"arrow"},count=64] run function bts:blocks/fletching/arrow/arrow




