# run as all non #visuals entities

## general behavior 
execute at @s positioned ~ ~-0.5 ~ if predicate bts:trample run function bts:misc/trample_leaves
execute if entity @s[type=#bts:monsters,tag=!ai] at @s run function bts:mobs/monster_climb
###monsters behavior
execute as @s[type=#bts:monsters,tag=!attributes_added,tag=!ai] run function bts:mobs/monster_attributes

# Animals AI
execute if entity @s[type=#bts:ai_neutral,tag=!scanned,tag=!tammed] at @s run function bts:mobs/scan

execute if entity @s[type=#bts:ai_neutral,tag=is_nutral,nbt={HurtTime:10s}] on passengers run function bts:mobs/attack

execute if entity @s[tag=ai,predicate=bts:is_passanger,tag=hurt_animal] run function bts:mobs/anger_time


execute if entity @s[tag=ai,predicate=!bts:is_passanger] run function bts:mobs/silent_kill

execute if entity @s[type=#bts:small,tag=!scanned] run function bts:mobs/shrink

# Slime Rain 
execute if entity @s[type=slime,tag=slimerain] run function bts:world_event/slimerain/timer

# MINER ZOMBIE
execute if entity @s[type=#bts:miner_zombies,tag=!scanned] run function bts:mobs/miner_zombie
execute if entity @s[type=#bts:miner_zombies,tag=scanned] at @s if items entity @s weapon iron_pickaxe run function bts:mobs/miner_zombie_mine

# ZOMBIE RIDER
execute if entity @s[type=#bts:monster_riders] if predicate bts:world_event/rng0.01 at @s if entity @e[type=#bts:monsters_can_ride_on,distance=..1.5,predicate=!bts:is_vehicle] run ride @s mount @n[type=#bts:monsters_can_ride_on]
execute if entity @s[type=#bts:monster_riders,predicate=bts:is_passanger,tag=!ai] if predicate bts:world_event/rng0.001 run ride @s dismount

# SPIDER SHOOTING WEB
execute if entity @s[type=spider] at @s run function bts:mobs/spider_shoot_throw
execute as @e[type=falling_block,tag=motion_projectile,tag=!motion_added,distance=..1,limit=1] at @s rotated as @e[distance=..1,limit=1,type=spider] run function bts:mobs/apply_motion

# ignite burning creepers 
execute if entity @s[type=creeper,predicate=bts:is_on_fire] run data merge entity @s[type=creeper] {ignited:1b}

#bosses
execute if entity @s[type=slime,tag=slime_king] at @s run function bts:world_event/slimerain/slime_king_tp
