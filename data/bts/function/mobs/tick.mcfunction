
# Animals AI
execute if entity @s[type=#bts:ai_neutral,tag=!scanned] at @s run function bts:mobs/scan

execute if entity @s[type=#bts:ai_neutral,nbt={HurtTime:10s}] run function bts:mobs/attack


execute if entity @s[tag=ai,predicate=!bts:is_passanger] run function bts:mobs/silent_kill


# Slime Rain 
execute if entity @s[type=slime,tag=slimerain] run function bts:world_event/slimerain/timer


#monsters behavior

execute if entity @s[type=zombie,tag=!scanned] run function bts:mobs/miner_zombie
execute if entity @s[type=zombie,tag=scanned] at @s if items entity @s weapon iron_pickaxe run function bts:mobs/miner_zombie_mine


execute if entity @s[type=#bts:monster_riders] if predicate bts:word_event/rng0.01 at @s if entity @e[type=#bts:monsters_can_ride_on,distance=..1.5,predicate=!bts:is_vehicle] run ride @s mount @n[type=#bts:monsters_can_ride_on]
execute if entity @s[type=#bts:monster_riders,predicate=bts:is_passanger,tag=!ai] if predicate bts:word_event/rng0.001 run ride @s dismount



#bosses
execute if entity @s[type=slime,tag=slime_king] at @s run function bts:world_event/slimerain/slime_king_tp
