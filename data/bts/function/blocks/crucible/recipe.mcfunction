execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#steel ingot                                   input 1                                            input 2                                                 verify output slot                                                                 unless full                                            craft
execute if items block ~ ~ ~ container.10 iron_ingot if items block ~ ~ ~ container.11 #bts:coals if items block ~ ~ ~ container.12 #bts:coals unless items block ~ ~ ~ container.16 * unless items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data={"tag":"steel_ingot"},count=64] run function bts:blocks/crucible/steel_ingot/steel_ingot
execute if items block ~ ~ ~ container.10 iron_ingot if items block ~ ~ ~ container.11 #bts:coals if items block ~ ~ ~ container.12 #bts:coals if items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data={"tag":"steel_ingot"}] unless items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data={"tag":"steel_ingot"},count=64] run function bts:blocks/crucible/steel_ingot/steel_ingot




