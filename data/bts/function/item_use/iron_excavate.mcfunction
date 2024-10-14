scoreboard players add @s timer 1 
execute unless score @s timer matches 12.. run return 0
scoreboard players set @s timer 0


execute if block ~ ~ ~ iron_ore run summon item ^ ^ ^ {Item:{id:"minecraft:raw_iron",count:1}}
execute if block ~ ~ ~ iron_ore run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate bts:durability0 run playsound minecraft:entity.item.break
execute as @s if predicate bts:durability0 run item modify entity @s weapon.mainhand bts:delete_item
item modify entity @s weapon bts:64durability 