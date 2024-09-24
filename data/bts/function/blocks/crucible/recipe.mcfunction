execute if block ~ ~-1 ~ hopper run function bts:blocks/hopper_interaction

#steel ingot                                           input 1                                                                  input 2                                                      verify output slot                                                                 unless full                             
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_ingot"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:coal"}] unless data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:music_disc_11",components:{"minecraft:custom_data":{"tag":"steel_ingot"}},count:64}] run function bts:blocks/crucible/steel_ingot/steel_ingot
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_ingot"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:coal"}] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:music_disc_11",components:{"minecraft:custom_data":{"tag":"steel_ingot"}}}] unless data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:music_disc_11",components:{"minecraft:custom_data":{"tag":"steel_ingot"}},count:64}] run function bts:blocks/crucible/steel_ingot/steel_ingot






