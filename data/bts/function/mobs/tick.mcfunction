
# Animals AI
execute as @s[type=#bts:ai_neutral,tag=!scanned] at @s run function bts:mobs/scan

execute as @s[type=#bts:ai_neutral,nbt={HurtTime:10s}] run function bts:mobs/attack

kill @s[type=zombified_piglin,tag=ai,predicate=!bts:is_passanger]


# Slime Rain 
execute as @s[type=slime,tag=slimerain] run function bts:world_event/slimerain/timer
execute as @s[type=minecraft:slime,name=slime,nbt={Size:0}] run tp @s ~ -100 ~