#say duration
scoreboard players remove @s slowcast.duration 1

scoreboard players operation steps temp = @s slowcast.steps
execute positioned ^ ^ ^.5 run function bts:tests/step

execute unless score @s slowcast.duration matches 1.. run kill
