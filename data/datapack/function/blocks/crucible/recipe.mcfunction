execute if block ~ ~-1 ~ hopper run function datapack:blocks/hopper_interaction

#test alloy ingot 
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:iron_ingot"}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:gold_ingot"}] unless data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:nether_star"}] run function datapack:blocks/crucible/test_ingot/test_ingot




