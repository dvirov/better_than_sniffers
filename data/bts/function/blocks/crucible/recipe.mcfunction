execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#steel ingot                                   input 1                                            input 2                                                 verify output slot                                                                 unless full                                            craft
execute if items block ~ ~ ~ container.10 iron_ingot if items block ~ ~ ~ container.11 #bts:coals if items block ~ ~ ~ container.12 #bts:coals unless items block ~ ~ ~ container.16 music_disc_11[!minecraft:custom_data~{"steel_ingot":"1b"},count=64] run function bts:blocks/crucible/recipe/steel_ingot
#execute if items block ~ ~ ~ container.10 iron_ingot if items block ~ ~ ~ container.11 #bts:coals if items block ~ ~ ~ container.12 #bts:coals if items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data~{"tag":"crucible_made"}] unless items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data~{"crucible_made":"1b"},count=64] run function bts:blocks/crucible/recipe/steel_ingot

#blazing ingot                                   input 1                                            input 2                                                 verify output slot                                                                 unless full                                            craft
execute if items block ~ ~ ~ container.10 gold_ingot if items block ~ ~ ~ container.11 blaze_powder if items block ~ ~ ~ container.12 blaze_powder unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"blazing_ingot":"1b"},count=64] run function bts:blocks/crucible/recipe/blazing_ingot
#execute if items block ~ ~ ~ container.10 gold_ingot if items block ~ ~ ~ container.11 blaze_powder if items block ~ ~ ~ container.12 blaze_powder if items block ~ ~ ~ container.16 *[minecraft:custom_data~{"crucible_made":"1b"}] unless items block ~ ~ ~ container.16 music_disc_11[minecraft:custom_data~{"crucible_made":"1b"},count=64] run function bts:blocks/crucible/recipe/steel_ingot





