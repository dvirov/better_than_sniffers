advancement revoke @s only bts:trigger/health/damage_leg
execute store result score @s current.health run data get entity @s Health

execute if score @s current.health >= @s previous.health run return 0

execute store result score rng values run random value 1..2
execute if score rng values matches 1 unless score @s R.leg matches ..0 run function bts:world_event/health/damage/r_leg
execute if score rng values matches 2 unless score @s L.leg matches ..0 run function bts:world_event/health/damage/l_leg

execute if score @s L.leg matches ..0 if score @s R.leg matches ..0 unless score @s current.health = @s previous.health run return run function bts:world_event/health/damage/damage_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/damage/damage_leg

