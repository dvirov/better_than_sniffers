execute if score @s crafting.progress matches 10..39 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=2,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 39..59 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 59..79 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 79..99 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=5,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 99..119 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=6,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 119..139 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=7,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 139..159 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=8,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 159..189 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=9,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 189..198 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=10,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]
execute if score @s crafting.progress matches 199..200 run item replace block ~ ~ ~ container.26 with barrier[custom_model_data=11,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}]

execute unless score @s crafting.progress matches 200 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0
item replace block ~ ~ ~ container.26 with barrier[custom_model_data=1,max_stack_size=1,hide_tooltip={},custom_data={"tag":"crucible"}] 1
execute if items block ~ ~ ~ container.16 music_disc_11 run item modify block ~ ~ ~ container.16 bts:add1
execute unless items block ~ ~ ~ container.16 music_disc_11 run item replace block ~ ~ ~ container.16 with minecraft:music_disc_11[!minecraft:jukebox_playable,minecraft:max_stack_size=64,minecraft:item_name='{"color":"yellow","text":"Blazing Gold Ingot"}',minecraft:custom_data={"blazing_ingot":"1b","crucible_made":"1b"}] 1
item modify block ~ ~ ~ container.10 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item

#data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD000"}'}