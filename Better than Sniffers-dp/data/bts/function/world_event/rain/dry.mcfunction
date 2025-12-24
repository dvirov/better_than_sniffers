
execute if predicate bts:world_event/rng0.5 run scoreboard players remove @s timer 1
execute unless score @s timer matches ..0 run return fail 
setblock ~ ~ ~ air
kill @s