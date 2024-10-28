
execute if score @s timer matches 1.. run return run scoreboard players remove @s timer 1

execute store success score @s bool anchored eyes if block ^ ^ ^1 #bts:miner_zombie_mineable run setblock ^ ^ ^1 air destroy
execute if score @s bool matches 1 run scoreboard players set @s timer 60
execute if score @s bool matches 1 run scoreboard players set @s bool 0
execute anchored eyes run particle flame ^ ^ ^1 0 0 0 0 1 force