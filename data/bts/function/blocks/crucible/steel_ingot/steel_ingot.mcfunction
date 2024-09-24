#execute if score @s crafting.progress matches 20 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD001"}'}
#execute if score @s crafting.progress matches 40 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD002"}'}
#execute if score @s crafting.progress matches 60 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD003"}'}
#execute if score @s crafting.progress matches 80 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD004"}'}
#execute if score @s crafting.progress matches 100 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD005"}'}
#execute if score @s crafting.progress matches 120 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD006"}'}
#execute if score @s crafting.progress matches 140 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD007"}'}
#execute if score @s crafting.progress matches 160 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD008"}'}
#execute if score @s crafting.progress matches 180 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD009"}'}
#execute if score @s crafting.progress matches 200 run data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD010"}'}

execute unless score @s crafting.progress matches 200 run return run function bts:blocks/crafting_time
scoreboard players set @s crafting.progress 0
execute if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:music_disc_11"}] run item modify block ~ ~ ~ container.16 bts:add1
execute unless data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:music_disc_11"}] run item replace block ~ ~ ~ container.16 with minecraft:music_disc_11[!minecraft:jukebox_playable,minecraft:max_stack_size=64,minecraft:item_name='{"color":"gray","text":"Steel Ingot"}',minecraft:custom_data={"tag":"steel_ingot"}] 1
item modify block ~ ~ ~ container.10 bts:delete_item
item modify block ~ ~ ~ container.11 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item

#data merge block ~ ~ ~ {CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD000"}'}