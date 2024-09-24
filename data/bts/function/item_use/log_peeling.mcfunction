 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
 #execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ oak_log run summon item ~ ~ ~ {Item:{id:"minecraft:oak_slab",count:1}}
execute if block ~ ~ ~ birch_log run summon item ~ ~ ~ {Item:{id:"minecraft:birch_slab",count:1}}
execute if block ~ ~ ~ acacia_log run summon item ~ ~ ~ {Item:{id:"minecraft:acacia_slab",count:1}}
execute if block ~ ~ ~ cherry_log run summon item ~ ~ ~ {Item:{id:"minecraft:cherry_slab",count:1}}
execute if block ~ ~ ~ jungle_log run summon item ~ ~ ~ {Item:{id:"minecraft:jungle_slab",count:1}}
execute if block ~ ~ ~ spruce_log run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_slab",count:1}}
execute if block ~ ~ ~ dark_oak_log run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_slab",count:1}}
execute if block ~ ~ ~ mangrove_log run summon item ~ ~ ~ {Item:{id:"minecraft:mangrove_slab",count:1}}
execute unless score @s raycast matches 50 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:item_use/log_peeling
scoreboard players reset @s raycast
advancement revoke @s only bts:trigger/log_peeling