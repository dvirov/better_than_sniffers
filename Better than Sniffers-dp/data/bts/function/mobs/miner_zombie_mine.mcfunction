
execute if score @s timer matches 1.. run return run scoreboard players remove @s timer 1

execute store success score @s bool anchored eyes if block ^ ^ ^1 #bts:miner_zombie_mineable unless block ^ ^ ^1 #bts:miner_zombie_proof run setblock ^ ^ ^1 air destroy
execute if score @s bool matches 1 run scoreboard players set @s timer 60
execute if score @s bool matches 1 run scoreboard players set @s bool 0
#execute anchored eyes run particle flame ^ ^ ^1 0 0 0 0 1 force

rotate @s facing entity @p[distance=..7,gamemode=survival]