#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
#execute unless block ~ ~ ~ #datapack:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #datapack:crafting_table_base run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["place_crafting"]}
execute unless score @s raycast matches 50 if block ~ ~ ~ #datapack:transparent positioned ^ ^ ^.1 run function datapack:item_use/sculpting_tool
scoreboard players reset @s raycast
