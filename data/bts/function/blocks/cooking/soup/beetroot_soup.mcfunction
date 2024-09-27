#execute if score @s crafting.progress matches 10..39 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=2,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 39..59 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 59..79 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 79..99 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=5,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 99..119 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=6,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 119..139 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=7,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 139..159 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=8,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 159..189 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=9,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 189..198 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=10,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
#execute if score @s crafting.progress matches 199..200 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=11,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]

particle bubble ~0.4 ~0.9 ~0.4 0.13 0 0.13 0 1
particle bubble_pop ~0.4 ~0.9 ~0.4 0.13 0 0.13 0 1

execute unless score @s crafting.progress matches 200 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0
item replace block ~ ~ ~ container.26 with barrier[custom_model_data=1,max_stack_size=1,hide_tooltip={},custom_data={"tag":"cooking"}] 1
#execute if items block ~ ~ ~ container.16 arrow run item modify block ~ ~ ~ container.16 bts:add2
execute unless items block ~ ~ ~ container.16 beetroot_soup run item replace block ~ ~ ~ container.16 with beetroot_soup[custom_data={"tag":"cooked_food"}]

item modify block ~ ~ ~ container.1 bts:delete_item
item modify block ~ ~ ~ container.2 bts:delete_item
item modify block ~ ~ ~ container.3 bts:delete_item
item modify block ~ ~ ~ container.10 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item
item modify block ~ ~ ~ container.20 bts:delete_item

#data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD000"}'}