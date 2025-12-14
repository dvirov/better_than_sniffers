#say temp_tick
execute as @e[type=block_display,tag=slowcast,scores={slowcast.duration=1..}] rotated as @p[tag=shooter] at @s run function bts:tests/duration

execute if entity @n[type=block_display,tag=slowcast] run schedule function bts:tests/temp_tick 1t