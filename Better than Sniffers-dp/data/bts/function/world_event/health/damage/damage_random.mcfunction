#advancement revoke @s only bts:trigger/health/damage_other
#execute store result score @s current.health run data get entity @s Health

#execute if score @s current.health >= @s previous.health run return 0

execute unless score @s damage matches ..-1 run return 0

execute store result score rng values run random value 1..6
execute if score rng values matches 1 unless score @s Body matches ..0 run function bts:world_event/health/damage/body
execute if score rng values matches 2 unless score @s R.arm matches ..0 run function bts:world_event/health/damage/r_arm
execute if score rng values matches 3 unless score @s L.arm matches ..0 run function bts:world_event/health/damage/l_arm
execute if score rng values matches 4 unless score @s R.leg matches ..0 run function bts:world_event/health/damage/r_leg
execute if score rng values matches 5 unless score @s L.leg matches ..0 run function bts:world_event/health/damage/l_leg
execute if score rng values matches 6 unless score @s Head matches ..1 run function bts:world_event/health/damage/damage_head
execute if predicate bts:health/1head_hp run function bts:world_event/health/damage/damage_head

function bts:world_event/health/damage/damage_random

#execute unless score @s health = @s previous.health run function bts:world_event/health/damage/damage_random



