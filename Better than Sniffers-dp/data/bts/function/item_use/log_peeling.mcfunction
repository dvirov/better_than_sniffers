 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
 #execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #bts:acacia_wood run loot spawn ~ ~ ~ loot bts:items/acacia_bark
execute if block ~ ~ ~ #bts:birch_wood run loot spawn ~ ~ ~ loot bts:items/birch_bark
execute if block ~ ~ ~ #bts:cherry_wood run loot spawn ~ ~ ~ loot bts:items/cherry_bark
execute if block ~ ~ ~ #bts:dark_oak_wood run loot spawn ~ ~ ~ loot bts:items/dark_oak_bark
execute if block ~ ~ ~ #bts:jungle_wood run loot spawn ~ ~ ~ loot bts:items/jungle_bark
execute if block ~ ~ ~ #bts:mangrove_wood run loot spawn ~ ~ ~ loot bts:items/mangrove_bark
execute if block ~ ~ ~ #bts:oak_wood run loot spawn ~ ~ ~ loot bts:items/oak_bark
execute if block ~ ~ ~ #bts:pale_oak_wood run loot spawn ~ ~ ~ loot bts:items/pale_oak_bark
execute if block ~ ~ ~ #bts:spruce_wood run loot spawn ~ ~ ~ loot bts:items/spruce_bark

execute unless score @s raycast matches 24 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.25 run function bts:item_use/log_peeling
scoreboard players reset @s raycast
