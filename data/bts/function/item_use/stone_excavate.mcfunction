scoreboard players add @s timer 1 
execute unless score @s timer matches 4.. run return 0
scoreboard players set @s timer 0

execute if block ~ ~ ~ stone run summon item ^ ^ ^ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ stone run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate bts:durability0 run playsound minecraft:entity.item.break
execute as @s if predicate bts:durability0 run item modify entity @s weapon.mainhand bts:delete_item
item modify entity @s weapon.mainhand bts:32durability