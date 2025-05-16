#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
#execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #bts:crafting_table_base run summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["place_crafting"],Radius:0 , Age:50}
execute unless score @s raycast matches 100 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.01 run return run function bts:item_use/sculpting_tool
scoreboard players reset @s raycast
