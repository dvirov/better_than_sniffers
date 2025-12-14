
#execute store result score @s current.health run data get entity @s Health

execute if score @s current.health <= @s previous.health run return 0

execute store result score rng values run random value 1..2
execute if score rng values matches 1 unless score @s R.arm matches 2.. run function bts:world_event/health/heal/r_arm
execute if score rng values matches 2 unless score @s L.arm matches 2.. run function bts:world_event/health/heal/l_arm

execute if score @s L.arm matches 2 if score @s R.arm matches 2 unless score @s current.health = @s previous.health run return run function bts:world_event/health/heal/heal_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/heal/heal_arm


