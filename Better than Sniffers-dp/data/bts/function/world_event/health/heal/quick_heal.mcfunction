
# apply if player choose quick heal in heal menu 
## choose the most important parts first without considering the power of the heal item

execute unless score @s Head matches 4.. run return run function bts:world_event/health/heal/head
execute unless score @s L.leg matches 3.. run return run function bts:world_event/health/heal/l_leg
execute unless score @s R.leg matches 3.. run return run function bts:world_event/health/heal/r_leg
execute unless score @s L.arm matches 2.. run return run function bts:world_event/health/heal/l_arm
execute unless score @s R.arm matches 2.. run return run function bts:world_event/health/heal/r_arm
execute unless score @s Body matches 6.. run return run function bts:world_event/health/heal/body


