execute as @e[type=#bts:ai_neutral,tag=!scanned] at @s run function bts:mobs/scan

execute as @e[type=#bts:ai_neutral,nbt={HurtTime:10s}] run function bts:mobs/attack

kill @e[type=zombified_piglin,tag=ai,predicate=!bts:is_passanger]