advancement revoke @s only bts:trigger/fishing_event
say fish

scoreboard players add .boolfish bool 0
execute if score .boolfish bool matches 0 run schedule function bts:misc/fishing_event 1t
execute if score .boolfish bool matches 0 run return run scoreboard players add .boolfish bool 1
scoreboard players set .boolfish bool 0


execute as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishing_replace:test}}}}] run function bts:world_event/fishing_loot/test