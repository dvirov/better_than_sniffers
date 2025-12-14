#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force



scoreboard players add @s raycast 1


execute unless score @s raycast matches 200 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:item_use/cast_get_items
scoreboard players reset @s raycast

execute if block ~ ~ ~ decorated_pot run function bts:item_use/pot_get_items
