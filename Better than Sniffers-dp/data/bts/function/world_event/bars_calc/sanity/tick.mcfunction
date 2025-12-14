execute if score @s bar_sanity_calc matches 1701.. run return run scoreboard players set @s sanity.effect.timer 0
execute if score @s bar_sanity_calc matches 1700.. run return 0

scoreboard players add @s sanity.effect.timer 1

execute unless score @s sanity.effect.timer >= @s bar_sanity_calc run return 0
scoreboard players set @s sanity.effect.timer 0


execute if predicate bts:world_event/rng0.2 run return run function bts:world_event/bars_calc/sanity/scary_sound




