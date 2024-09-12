execute if block ~ ~ ~ coal_ore run summon item ^ ^ ^ {Item:{id:"minecraft:coal",count:1}}
execute if block ~ ~ ~ coal_ore run setblock ~ ~ ~ cobblestone

execute as @s at @s if predicate datapack:32duability_stone run playsound minecraft:entity.item.break
execute as @s if predicate datapack:32duability_stone run item modify entity @s weapon.mainhand datapack:delete_item
item modify entity @s weapon.mainhand datapack:32durability