
# run from tick from player tick
## regen health 

execute if score @s previous.health >= @s health run return 0

execute store result score rng values run random value 1..6

execute if score rng values matches 1 unless score @s Head matches 4.. run function bts:world_event/health/heal/regen_head
execute if score rng values matches 2 unless score @s L.leg matches 3.. run function bts:world_event/health/heal/regen_l_leg
execute if score rng values matches 3 unless score @s R.leg matches 3.. run function bts:world_event/health/heal/regen_r_leg
execute if score rng values matches 4 unless score @s L.arm matches 2.. run function bts:world_event/health/heal/regen_l_arm
execute if score rng values matches 5 unless score @s R.arm matches 2.. run function bts:world_event/health/heal/regen_r_arm
execute if score rng values matches 6 unless score @s Body matches 6.. run function bts:world_event/health/heal/regen_body


function bts:world_event/health/heal/regen