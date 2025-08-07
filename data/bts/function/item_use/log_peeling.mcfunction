 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
 #execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ oak_log run summon item ~ ~ ~ {Item:{id:"minecraft:oak_slab",count:1,components:{"minecraft:item_model":"bts:oak_bark","minecraft:item_name":"Oak Bark"}}}
execute if block ~ ~ ~ birch_log run summon item ~ ~ ~ {Item:{id:"minecraft:birch_slab",count:1,components:{"minecraft:item_model":"bts:birch_bark","minecraft:item_name":"Birch Bark"}}}
execute if block ~ ~ ~ acacia_log run summon item ~ ~ ~ {Item:{id:"minecraft:acacia_slab",count:1,components:{"minecraft:item_model":"bts:acacia_bark","minecraft:item_name":"Acacia Bark"}}}
execute if block ~ ~ ~ cherry_log run summon item ~ ~ ~ {Item:{id:"minecraft:cherry_slab",count:1,components:{"minecraft:item_model":"bts:cherry_bark","minecraft:item_name":"Cherry Bark"}}}
execute if block ~ ~ ~ jungle_log run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_slab",count:1,components:{"minecraft:item_model":"bts:jungle_bark","minecraft:item_name":"Jungle Bark"}}}
execute if block ~ ~ ~ spruce_log run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_slab",count:1,components:{"minecraft:item_model":"bts:spruce_bark","minecraft:item_name":"Spruce Bark"}}}
execute if block ~ ~ ~ dark_oak_log run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_slab",count:1,components:{"minecraft:item_model":"bts:dark_oak_bark","minecraft:item_name":"Dark Oak Bark"}}}
execute if block ~ ~ ~ mangrove_log run summon item ~ ~ ~ {Item:{id:"minecraft:mangrove_slab",count:1,components:{"minecraft:item_model":"bts:mangrove_bark","minecraft:item_name":"mangrove Bark"}}}
execute if block ~ ~ ~ pale_oak_log run summon item ~ ~ ~ {Item:{id:"minecraft:pale_oak_slab",count:1,components:{"minecraft:item_model":"bts:pale_oak_bark","minecraft:item_name":"Pale Oak Bark"}}}

execute unless score @s raycast matches 6 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^1 run function bts:item_use/log_peeling
scoreboard players reset @s raycast
