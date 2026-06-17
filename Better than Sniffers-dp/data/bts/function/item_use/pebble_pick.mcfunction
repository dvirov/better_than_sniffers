

 # particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
 #execute unless block ~ ~ ~ #bts:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ stone_button[powered=true] run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[powered=true] run playsound minecraft:block.stone.hit block @s
execute unless score @s raycast matches 50 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:item_use/pebble_pick
scoreboard players reset @s raycast
advancement revoke @s only bts:trigger/pebble_pick

