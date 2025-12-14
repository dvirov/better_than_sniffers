execute if predicate bts:world_event/rng0.01 run scoreboard players add @s bar_sanity_calc 1
 

execute if score @s sleep.dialog matches 0 run dialog show @s bts:sleep_menu

scoreboard players set @s sleep.dialog 1
