 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
execute if block ~ ~ ~ decorated_pot run summon item ~ ~0.3 ~ {PickupDelay:20,Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1}}
execute unless score @s raycast matches 50 if block ~ ~ ~ #datapack:transparent positioned ^ ^ ^.1 run function datapack:item_use/pot_empty
scoreboard players reset @s raycast
execute as @n[type=item] at @s run data modify entity @s Item set from block ~ ~-0.7 ~ item
execute as @n[type=item] at @s run data modify entity @s Item set from block ~ ~ ~ item
execute as @n[type=item] at @s run data modify block ~ ~-0.7 ~ item set value {}
kill @e[type=item,nbt={Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1}}]
advancement revoke @s only datapack:trigger/pot_empty