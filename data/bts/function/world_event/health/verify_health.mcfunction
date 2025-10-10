scoreboard players set @s health_clc 0
scoreboard players operation @s health_clc += @s Head
scoreboard players operation @s health_clc += @s L.arm
scoreboard players operation @s health_clc += @s Body
scoreboard players operation @s health_clc += @s R.arm
scoreboard players operation @s health_clc += @s L.leg
scoreboard players operation @s health_clc += @s R.leg

#execute if score @s health_clc < @s health run return run function bts:world_event/health/heal/regen
#execute if score @s health_clc > @s health run return run function bts:world_event/health/damage/damage_taken


#execute if score @s L.leg matches 4.. run scoreboard players set @s L.leg 3