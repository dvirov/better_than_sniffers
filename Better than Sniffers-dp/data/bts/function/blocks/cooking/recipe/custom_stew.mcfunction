execute if score @s crafting.progress matches 10..39 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[1]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 39..59 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[2]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 59..79 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[3]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 79..99 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[4]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 99..119 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[5]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 119..139 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[6]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 139..159 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[7]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 159..189 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[8]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 189..198 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[9]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]
execute if score @s crafting.progress matches 199..200 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[10]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}]

particle bubble ~0 ~0.2 ~0 0.13 0 0.13 0 1
particle bubble_pop ~0 ~0.2 ~0 0.13 0 0.13 0 1

execute unless score @s crafting.progress matches 200 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0

item replace block ~ ~ ~ container.26 with barrier[item_model="air",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={cooking:1b}] 1

scoreboard players set @s nutrition_clc 0
scoreboard players set @s saturation_clc 0
scoreboard players set @s nutrition_temp 0
scoreboard players set @s saturation_temp 0

execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:1b}].components.minecraft:custom_data.cooking_values.nutrition
scoreboard players operation @s nutrition_clc += @s nutrition_temp
execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:2b}].components.minecraft:custom_data.cooking_values.nutrition
scoreboard players operation @s nutrition_clc += @s nutrition_temp
execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:3b}].components.minecraft:custom_data.cooking_values.nutrition
scoreboard players operation @s nutrition_clc += @s nutrition_temp
execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:10b}].components.minecraft:custom_data.cooking_values.nutrition
scoreboard players operation @s nutrition_clc += @s nutrition_temp
execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:11b}].components.minecraft:custom_data.cooking_values.nutrition
scoreboard players operation @s nutrition_clc += @s nutrition_temp
execute store result score @s nutrition_temp run data get block ~ ~ ~ Items.[{Slot:12b}].components.minecraft:custom_data.cooking_values.nutrition
execute store result storage bts:custom_stew nutrition float 0.01 run scoreboard players operation @s nutrition_clc += @s nutrition_temp


execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:1b}].components.minecraft:custom_data.cooking_values.saturation
scoreboard players operation @s saturation_clc += @s saturation_temp
execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:2b}].components.minecraft:custom_data.cooking_values.saturation
scoreboard players operation @s saturation_clc += @s saturation_temp
execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:3b}].components.minecraft:custom_data.cooking_values.saturation
scoreboard players operation @s saturation_clc += @s saturation_temp
execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:10b}].components.minecraft:custom_data.cooking_values.saturation
scoreboard players operation @s saturation_clc += @s saturation_temp
execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:11b}].components.minecraft:custom_data.cooking_values.saturation
scoreboard players operation @s saturation_clc += @s saturation_temp
execute store result score @s saturation_temp run data get block ~ ~ ~ Items.[{Slot:12b}].components.minecraft:custom_data.cooking_values.saturation
execute store result storage bts:custom_stew saturation float 0.01 run scoreboard players operation @s saturation_clc += @s saturation_temp


data modify storage bts:custom_stew name1 set from block ~ ~ ~ Items.[{Slot:1b}].components.minecraft:custom_data.cooking_values.name
data modify storage bts:custom_stew name2 set from block ~ ~ ~ Items.[{Slot:2b}].components.minecraft:custom_data.cooking_values.name
data modify storage bts:custom_stew name3 set from block ~ ~ ~ Items.[{Slot:3b}].components.minecraft:custom_data.cooking_values.name
data modify storage bts:custom_stew name4 set from block ~ ~ ~ Items.[{Slot:10b}].components.minecraft:custom_data.cooking_values.name
data modify storage bts:custom_stew name5 set from block ~ ~ ~ Items.[{Slot:11b}].components.minecraft:custom_data.cooking_values.name
data modify storage bts:custom_stew name6 set from block ~ ~ ~ Items.[{Slot:12b}].components.minecraft:custom_data.cooking_values.name







function bts:blocks/cooking/recipe/custom_stew/stew with storage bts:custom_stew


item modify block ~ ~ ~ container.1 bts:delete_item
item modify block ~ ~ ~ container.2 bts:delete_item
item modify block ~ ~ ~ container.3 bts:delete_item
item modify block ~ ~ ~ container.10 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item
item modify block ~ ~ ~ container.20 bts:delete_item
