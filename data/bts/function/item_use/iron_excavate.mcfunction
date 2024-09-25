execute if block ~ ~ ~ iron_ore run summon item ^ ^ ^ {Item:{id:"minecraft:iron_nugget",count:1}}
execute if block ~ ~ ~ iron_ore run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate bts:durability0 run playsound minecraft:entity.item.break
execute as @s if predicate bts:durability0 run item modify entity @s weapon.mainhand bts:delete_item
item modify entity @s weapon bts:64durability 