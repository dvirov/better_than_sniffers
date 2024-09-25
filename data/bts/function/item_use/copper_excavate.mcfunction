execute if block ~ ~ ~ copper_ore run summon item ^ ^ ^ {Item:{id:"minecraft:raw_copper",count:1}}
execute if block ~ ~ ~ copper_ore run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate bts:durability0 run playsound minecraft:entity.item.break
execute as @s if predicate bts:durability0 run item modify entity @s weapon.mainhand bts:delete_item
item modify entity @s weapon.mainhand bts:64durability