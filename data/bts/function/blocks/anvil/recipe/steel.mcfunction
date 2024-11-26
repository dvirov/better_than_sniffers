execute unless items entity @s weapon *[minecraft:custom_data~{anvil:1}] run item modify entity @s weapon [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_axe","minecraft:custom_data":"{anvil:1,steel_ingot:1b}"}}]

execute if items entity @s weapon *[custom_data~{anvil:3}] run item modify entity @s weapon [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_axe","minecraft:custom_data":"{anvil:4,steel_ingot:1b}"}}]
execute if items entity @s weapon *[custom_data~{anvil:2}] run item modify entity @s weapon [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_axe","minecraft:custom_data":"{anvil:3,steel_ingot:1b}"}}]
execute if items entity @s weapon *[custom_data~{anvil:1}] run item modify entity @s weapon [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_axe","minecraft:custom_data":"{anvil:2,steel_ingot:1b}"}}]


execute unless score @s anvil.hit matches 5.. run return fail

execute unless score @s values matches 0..10 run return fail 
execute if score @s values matches 0 run loot replace entity @s weapon loot bts:crafting/steel_knife
execute if score @s values matches 1 run loot replace entity @s weapon loot bts:crafting/steel_axe
execute if score @s values matches 2 run loot replace entity @s weapon loot bts:crafting/steel_sword
execute if score @s values matches 3 run loot replace entity @s weapon loot bts:crafting/steel_shovel
execute if score @s values matches 4 run loot replace entity @s weapon loot bts:crafting/steel_hoe
execute if score @s values matches 5 run loot replace entity @s weapon loot bts:crafting/steel_pickaxe

scoreboard players set @s anvil.hit 0