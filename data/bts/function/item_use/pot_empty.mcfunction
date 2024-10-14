 #particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s raycast 1
execute if block ~ ~ ~ decorated_pot run summon item ~ ~ ~ {PickupDelay:2,Motion:[0.0,0.0,0.0],Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":1}}}
execute if block ~ ~ ~ decorated_pot run execute as @n[type=item] at @s run data modify entity @s Item set from block ~ ~ ~ item
execute unless score @s raycast matches 20 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:item_use/pot_empty
scoreboard players reset @s raycast
execute as @n[type=item] at @s run data modify block ~ ~ ~ item set value {id:"minecraft:air"}
kill @e[type=item,nbt={Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1}}]
