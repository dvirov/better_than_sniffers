execute if score @s crafting.progress matches 10..39 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[2]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 39..59 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[3]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 59..79 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[4]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 79..99 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[5]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 99..119 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[6]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 119..139 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[7]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 139..159 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[8]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 159..189 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[9]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 189..198 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[10]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]
execute if score @s crafting.progress matches 199..200 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:alc_arrow",custom_model_data={floats:[11]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}]

execute unless score @s crafting.progress matches 200 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0
item replace block ~ ~ ~ container.26 with barrier[item_model="air",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={alchemy:1b}] 1
execute if items block ~ ~ ~ container.22 cobblestone run item modify block ~ ~ ~ container.22 bts:add1
execute unless items block ~ ~ ~ container.22 cobblestone run item replace block ~ ~ ~ container.22 with cobblestone 64
item modify block ~ ~ ~ container.3 bts:delete_item
item modify block ~ ~ ~ container.4 bts:delete_item
item modify block ~ ~ ~ container.5 bts:delete_item
item replace block ~ ~ ~ container.11 with bucket
item replace block ~ ~ ~ container.15 with bucket

