#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force


#
scoreboard players add @s raycast 1

execute if block ~ ~ ~ decorated_pot run summon item ~ ~ ~ {PickupDelay:2,Motion:[0.0,0.0,0.0],Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}

######
execute if block ~ ~ ~ decorated_pot as @e[limit=1,tag=blank_item ,distance=..0.01] at @s run data modify entity @s Item set from block ~ ~ ~ item
execute if block ~ ~ ~ decorated_pot as @e[limit=1,tag=blank_item ,distance=..0.01] at @s run data modify entity @s Item.count set value 1


execute unless score @s raycast matches 20 if block ~ ~ ~ #bts:transparent positioned ^ ^ ^.1 run function bts:item_use/pot_empty_one
scoreboard players reset @s raycast


#####
execute as @e[limit=1,tag=blank_item ,distance=..0.01] at @s store result score num.tmp temp run data get block ~ ~ ~ item.count
execute store result storage minecraft:temp temp int 1 run scoreboard players operation num.tmp temp -= .1 values
execute as @e[limit=1,tag=blank_item ,distance=..0.01] at @s unless score num.tmp temp matches ..0 run data modify block ~ ~ ~ item.count set from storage temp temp
execute as @e[limit=1,tag=blank_item ,distance=..0.01] at @s if score num.tmp temp matches ..0 run data remove block ~ ~ ~ item



kill @e[limit=1,type=item,nbt={Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1}}]
