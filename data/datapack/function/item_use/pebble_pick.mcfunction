

 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
 #execute unless block ~ ~ ~ #datapack:transparent run particle angry_villager ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ stone_button[powered=true] run fill ~ ~ ~ ~ ~ ~ air destroy

execute unless score @s raycast matches 50 if block ~ ~ ~ #datapack:transparent positioned ^ ^ ^.1 run function datapack:item_use/pebble_pick
scoreboard players reset @s raycast
advancement revoke @s only datapack:trigger/pebble_pick

