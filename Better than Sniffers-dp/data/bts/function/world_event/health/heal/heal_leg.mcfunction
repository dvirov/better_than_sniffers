

execute if score @s current.health <= @s previous.health run return 0

execute store result score rng values run random value 1..2
execute if score rng values matches 1 unless score @s R.leg matches 3.. run function bts:world_event/health/heal/r_leg
execute if score rng values matches 2 unless score @s L.leg matches 3.. run function bts:world_event/health/heal/l_leg

#tellraw @a [{color:"blue" ,score:{name:"rng", objective:"values"}},{text:"leg rng"}]

execute if score @s L.leg matches 3 if score @s R.leg matches 3 unless score @s current.health = @s previous.health run return run function bts:world_event/health/heal/heal_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/heal/heal_leg

