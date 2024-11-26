scoreboard players add @s values 1

execute if score @s values matches 1 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_axe"}}]
execute if score @s values matches 2 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_sword"}}]
execute if score @s values matches 3 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_shovel"}}]
execute if score @s values matches 4 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_hoe"}}]
execute if score @s values matches 5 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:empty_slot_pickaxe"}}]
execute if score @s values matches 6 run item modify entity @s container.0 [{"function":"minecraft:set_components","components":{"minecraft:item_model":"bts:flint_knife"}}]
execute if score @s values matches 6.. run scoreboard players set @s values 0


