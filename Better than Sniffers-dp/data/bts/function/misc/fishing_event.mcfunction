advancement revoke @s only bts:trigger/fishing_event
return 0
say fish

scoreboard players add .boolfish bool 0
execute if score .boolfish bool matches 0 run schedule function bts:misc/fishing_event 1t
execute if score .boolfish bool matches 0 run return run scoreboard players add .boolfish bool 1
scoreboard players set .boolfish bool 0


execute as @e[type=item,distance=..10,limit=1,nbt={Item:{components:{"minecraft:custom_data":{fishing_replace:test}}}}] run function bts:world_event/fishing_loot/test