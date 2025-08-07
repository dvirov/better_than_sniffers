execute if score @s crafting.progress matches 1..10 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[1]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 10..20 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[2]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 20..30 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[3]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 30..40 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[4]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 40..50 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[5]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 50..60 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[6]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 60..70 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[7]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 70..80 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[8]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 80..90 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[9]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]
execute if score @s crafting.progress matches 90..100 run item replace block ~ ~ ~ container.26 with barrier[item_model="bts:arrow",custom_model_data={floats:[10]},max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={crucible:1b}]

execute unless score @s crafting.progress matches 100 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0
item replace block ~ ~ ~ container.26 with barrier[item_model="air",max_stack_size=1,custom_data={crucible:1b}] 1
execute if items block ~ ~ ~ container.16 copper_ingot run item modify block ~ ~ ~ container.16 bts:add2
execute unless items block ~ ~ ~ container.16 copper_ingot run item replace block ~ ~ ~ container.16 with minecraft:copper_ingot[custom_data={"copper_ingot":1b,"crucible_made":1b}] 2
item modify block ~ ~ ~ container.10 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item

#data merge block ~ ~ ~ {CustomName:{"color":"white","text":"\uF807\uF801\uD000"}}