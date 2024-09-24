execute if block ~ ~ ~ stone run summon item ^ ^ ^ {Item:{id:"minecraft:cobblestone_slab",count:1}}
execute if block ~ ~ ~ stone run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate bts:32duability_stone run playsound minecraft:entity.item.break
execute as @s if predicate bts:32duability_stone run item modify entity @s weapon.mainhand bts:delete_item
item modify entity @s weapon.mainhand bts:32durability